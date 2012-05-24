class Bucket
      attr_accessor :s,:w
      def initialize(w,s)
      	  @s=s
	  @w=w
      end
end

def printknapsack(v,n,c,s,m)
   i = n
   j = c
      
    while i > 0  && j > 0
       
	if s[i][j] == 1
           m << i
	   j = j - v[i - 1].s  
     	  elsif s[i][j] == 2
    	   printknapsack(v, i - 1, j, s, Array.new(m))      
           m << i
          j = j - v[i - 1].s
         end
	
	 i -= 1
    end
   p "Solution = #{m.sort}"
end


def knapsack(v,n,c)
    m=[];s=[]

    for i in 0.upto(n)
    	m << [];s <<[]
    	m[i][0]=0
    	s[i][0]=0
    end

    for i in 0.upto(c)
    	m[0][i] = 0
    	s[0][i] = 0
	end

   for i in 1.upto(n)
       for j in 0.upto(c)
       
	if v[i - 1].s <= j && m[i-1][j] < m[i-1][j-v[i - 1].s] + v[ i - 1].w
       	   m[i][j] = (m[i -1][j-v[i - 1].s] + v[i - 1].w)
           s[i][j] = 1;
    	elsif v[i - 1].s <= j && m[i - 1][j] == m[i - 1][j-v[i - 1].s] + v[i - 1].w
     	   m[i][j] = m[i - 1][j]
    	   s[i][j] = 2
    	else
	  m[i][j] = m[i - 1][j]
     	  s[i][j] = 0
     	end
       end
   end

   p "max size = #{m[n][c]}"
   printknapsack(v,n,c,s,[])

end