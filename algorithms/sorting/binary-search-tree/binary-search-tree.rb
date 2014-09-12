#
# Implementation Binary Search Tree in Ruby language.
#

class Node

      def initialize(val)
          @info = val
          @left = 0
          @right = 0
      end

      def info=(val)
          @info = val
      end

      def left=(node)
          @left = node
      end

      def right=(node)
          @right = node
      end

      def getLeft()
          @left
      end  

      def getRight()
          @right
      end  

      def get()
          @info
      end

      def to_s
          "(#@info #@left #@right)"
      end  
end

class BinarySearchTree

      def initialize(val)

          @root = Node.new(val)
      end      

      def inorder(node)

          if node.getLeft() != 0
             inorder(node.getLeft)  
          end        

          print node.get(), " "

          if node.getRight() != 0
             inorder(node.getRight)  
          end        
      end  

      def sort()
          inorder(@root)
      end 

      def add(val)

          curr = @root

        while 1

          if curr.get() > val
             if curr.getLeft() != 0
                curr = curr.getLeft()
             else
                curr.left = Node.new(val) 
                do_break = true
             end  
          else
             if curr.getRight() != 0
                curr = curr.getRight()
             else
                curr.right = Node.new(val) 
                do_break = true
             end 
          end

          break if do_break       
        end

      end #end of function add

      def to_s 
          "#@root"
      end
end

tree = BinarySearchTree.new(8)
tree.add(3)
tree.add(9)
tree.add(10)
tree.add(11)
tree.add(2)
tree.sort()



