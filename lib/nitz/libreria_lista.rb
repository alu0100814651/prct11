Nodo = Struct.new(:value,:next,:prev)

class Lista
    include Enumerable
    attr_reader :start, :finish
    
    def initialize()
        @start = nil
        @finish = nil
    end
    
    def each 
        abcd = @start
        while abcd != nil do
            yield abcd.value
            abcd = abcd.next
        end
    end
         
    def vacia
        if (@start == nil)
            return true
        else
            return false
        end
    end
    
    def insertarstart(vall)
        nd = Nodo.new(vall,nil,nil)
        if(vacia == true)
            @start = nd
            @finish = nd
        else
            @start.prev = nd
        end
        return true
    end
    
    def insertarfinish(vall)
        nd = Nodo.new(vall,nil,nil)
        if(vacia == true)
            @start = nd
            @finish = nd
        else
            nd.prev = @finish
            @finish.next = nd
            @finish = nd
        end
        return true
    end
    
    def extraerstart
        if (vacia == true)
            return false
        else
            vall = @start.value
            @start = @start.next
            return vall
        end
    end

    
    def extraerfinish
        if(vacia == true)
            return false
        else
            vall = @finish.value
            @finish = @finish.prev
            if(@finish == nil)
                @start = nil
            else
                @finish.next = nil
            end
            return vall
        end
    end
end
