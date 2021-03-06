module Samples
  class API < Grape::API
    version 'v1'
    format :json

    resource :samples do
      get do
        json =
          {
            links: {
              self: "http://example.com/posts",
              next: "http://example.com/posts?page[offset]=2",
              last: "http://example.com/posts?page[offset]=10"
            },
            data: [{
              type: "posts",
              id: "1",
              attributes: {
                title: "JSON API paints my bikeshed!"
              },
              relationships: {
                author: {
                  links: {
                    self: "http://example.com/posts/1/relationships/author",
                    related: "http://example.com/posts/1/author"
                  },
                  data: { type: "people", id: 9 }
                },
                comments: {
                  links: {
                    self: "http://example.com/posts/1/relationships/comments",
                    related: "http://example.com/posts/1/comments"
                  },
                  data: [
                    { type: "comments", id: 5 },
                    { type: "comments", id: 12 }
                  ]
                }
              },
              links: {
                self: "http://example.com/posts/1"
              }
            }],
            included: [{
              type: "people",
              id: "9",
              attributes: {
                firstname: "Dan",
                lastname: "Gebhardt",
                twitter: "dgeb"
              },
              links: {
                self: "http://example.com/people/9"
              }
            }, {
              type: "comments",
              id: "5",
              attributes: {
                body: "First!"
              },
              links: {
                self: "http://example.com/comments/5"
              }
            }, {
              type: "comments",
              id: "12",
              attributes: {
                body: "I like XML better"
              },
              links: {
                self: "http://example.com/comments/12"
              }
            }]
          }
      end
    end
  end
end
