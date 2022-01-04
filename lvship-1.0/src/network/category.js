import {request} from './request'

export function getCategory() {
  return request({
    // url: '/category'
    url: '/category/one'
  })
}

export function getSubcategory(maitKey) {
  return request({
    // url: '/subcategory',
    url: '/category/pid/'+maitKey,
    // params: {
    //   maitKey
    // }
  })
}

export function getCategoryDetail(miniWallkey, type) {
  return request({
    url: '/subcategory/detail',
    params: {
      miniWallkey,
      type
    }
  })
}
// http://152.136.185.210:7878/api/m5//subcategory/detail