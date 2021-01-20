use v6.d;

class Solution {

  my @res = [];
  my $path = [];

  method track-back($start, @nums) {
    @res.push($path.Array) if $path; 
    # .gist 是字符串化
    
    for ($start .. @nums.elems-1) -> $i {
      $path.push(@nums[$i]);
      $path.say;
      self.track-back($i+1, @nums);
      $path.pop;
    }
  }

  method subsets(@nums) {
    self.track-back(0, @nums);
    return @res;
  }
}

sub MAIN() {
  my @num = [1 .. 5];
  my @result = Solution.new.subsets(@num);
  say @result;
  say @result[0][0].WHAT;
  say @num[0].WHAT;
}










