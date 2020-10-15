class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '英語' },
    { id: 3, name: '国語' },
    { id: 4, name: '算数' },
    { id: 5, name: '理科' },
    { id: 6, name: '社会' },
    { id: 7, name: '教養' },
    { id: 8, name: '家庭科' },
    { id: 9, name: '技術' },
    { id: 10, name: '保健体育' },
    { id: 11, name: 'その他' }
  ]
end