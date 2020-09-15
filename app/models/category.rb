class Category < ActiveHash::Base
  self.data = [
   { id: 1, name: '--' },
   { id: 2, name: 'テーブル' },
   { id: 3, name: 'グリル' },
   { id: 4, name: 'チェア' },
   { id: 5, name: 'テント' }
 ]
end
