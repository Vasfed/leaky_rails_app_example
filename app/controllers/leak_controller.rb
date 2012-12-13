class LeakController < ApplicationController

  def leak
    render text: "ololo"
    ($leak ||= []).push proc{ "some callback never to be called" }
  end

  def count
    GC.start
    render :json => HeapDump.count_objects([:ApplicationController] + ApplicationController.subclasses.map{|c| c.name.to_sym})
  end

  def dump
    fork {
      puts "Dumping"
      HeapDump.dump
      exit
    }
    render :text => "May be Dumped"
  end

end
