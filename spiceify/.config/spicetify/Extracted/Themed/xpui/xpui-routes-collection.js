(("undefined"!=typeof self?self:global).webpackChunkopen=("undefined"!=typeof self?self:global).webpackChunkopen||[]).push([[309],{58884:(e,t,a)=>{"use strict";a.r(t),a.d(t,{Collection:()=>ht,default:()=>Dt});var n=a(27378),s=a.n(n),r=a(79308),c=a(41056),l=a(61043);const o=(0,a(80406).P1)((e=>e.features),(e=>(null==e?void 0:e.enableShows)||!1));var i=a(71338),u=a(94212),d=a(24827),m=a(18308),E=a(72519),f=a(53520);var g=a(94578);const b=()=>{const e=function(){const[e,t]=(0,n.useState)(window.innerWidth),{scrollNodeChildRef:a}=(0,n.useContext)(m.VX),s=(0,E.y)((e=>{null!=e&&e.width&&t(e.width)}),250);return(0,f.y)({refOrElement:a,observeOnly:"width",onResize:s}),e}(),t=(0,r.v9)(o),a=(0,n.useMemo)((()=>[{title:l.ag.get("playlists"),itemId:"collection.tab-playlists",to:"/collection/playlists"},...t?[{title:l.ag.get("podcasts"),itemId:"collection.tab-podcasts",to:"/collection/podcasts",uri:"spotify:user:@:collection:podcasts"}]:[],{title:l.ag.get("artists"),itemId:"collection.tab-artists",to:"/collection/artists",uri:"spotify:user:@:collection:artists"},{title:l.ag.get("albums"),itemId:"collection.tab-albums",to:"/collection/albums",uri:"spotify:user:@:collection:albums"}]),[t]);return s().createElement(d.w,null,s().createElement(u.n,{className:g.Z.tabBar,links:a,windowSize:e}))};var p=a(93512),A=a(249),h=a(29088),D=a(5997),y=a(53177),C=a(33644),v=a(65526),T=a.n(v),S=a(66917),L=a.n(S),_=a(97186);function k(e,t){var a=Object.keys(e);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(e);t&&(n=n.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),a.push.apply(a,n)}return a}function N(e){for(var t=1;t<arguments.length;t++){var a=null!=arguments[t]?arguments[t]:{};t%2?k(Object(a),!0).forEach((function(t){T()(e,t,a[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(a)):k(Object(a)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(a,t))}))}return e}const O=e=>N(N({},e),{},{id:L().from(e.uri).getBase62Id(),external_urls:{spotify:""},href:"",images:e.images.map((e=>N(N({},e),{},{height:e.height,width:e.width})))}),R=e=>e.map(O),w=_.oT.ADDED_AT,P=_.oT.ADDED_AT,I=_.oT.ADDED_AT,x=_.oT.MOST_RELEVANT;var M=a(38533);const B="collection-searchBar-searchBar";var Y=a(77964),Q=a(48578),U=a(76190);const H=(0,n.createContext)({setSortState:()=>{throw new Error("setSortState must be used within a LibrarySortProvider")},sortState:_.oT.ADDED_AT}),Z=s().memo((({uri:e,children:t,defaultSortOption:a})=>s().createElement(U.r,{uri:e,defaultState:a,sortContext:H},t))),j=s().memo((({sortOptions:e})=>{const{sortState:t,setSortState:a}=(0,n.useContext)(H),r=(0,n.useCallback)((e=>{a(_.ei[e])}),[a]),c=e.map((e=>_.MY[e])),l=_.MY[t];return s().createElement(Q.A,{options:c,onSelect:r,selected:l})})),z=s().memo((({filterPlaceholder:e,sortOptions:t})=>{const a=(0,n.useContext)(C.H);return s().createElement("div",{className:B},null!=a&&a.getCapabilities().canFilter?s().createElement(Y.K,{placeholder:e}):null,null!=a&&a.getCapabilities().canSort?s().createElement(j,{sortOptions:t}):null)}));function F(e,t){var a=Object.keys(e);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(e);t&&(n=n.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),a.push.apply(a,n)}return a}function q(e){for(var t=1;t<arguments.length;t++){var a=null!=arguments[t]?arguments[t]:{};t%2?F(Object(a),!0).forEach((function(t){T()(e,t,a[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(a)):F(Object(a)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(a,t))}))}return e}const $=50;function W(e,t,a){const n=q({},a);return n.entities=t?e.items||[]:n.entities.concat(e.items||[]),n.total=e.totalLength,n.next=e.next,n}function G(e,t){const a=q({},t),n=t.entities.filter((t=>t.uri!==e));return a.total=(t.total||0)-(t.entities.length-n.length),a.entities=n,a}const V=e=>{const[t,a]=(0,n.useState)(null),s=(0,n.useCallback)((async()=>{if(!e)return;const t=await e();a((null==t?void 0:t.totalLength)||0)}),[e]);return(0,n.useEffect)((()=>{null===t&&s()}),[t,s]),{total:t}},X=()=>Promise.resolve({totalLength:0}),J={offset:0,limit:1};var K=a(60858),ee=a(62683);const te=s().memo((({nrArtists:e})=>{const t=(0,n.useContext)(C.H),{filter:a}=(0,n.useContext)(M.fo),{sortState:r}=(0,n.useContext)(H),c=(0,n.useRef)(!1),o=(0,n.useRef)({entities:[],total:e}),[i,u]=(0,n.useState)(0),d=(0,n.useCallback)((async(e,n,s=!1)=>{if(!c.current){c.current=!s;const l=await t.getArtists({offset:o.current.next||e,limit:n,filter:(0,_.$u)(a),sort:(0,_.e3)(r)});o.current=W(l,s,o.current),c.current=!1,u((e=>e+1))}}),[t,a,r]),m=(0,n.useCallback)((e=>{o.current=G(e,o.current),u((e=>e+1))}),[]);(0,n.useEffect)((()=>{d(0,$,!!i)}),[a,r]);const E=(0,n.useCallback)((()=>{o.current.entities.length!==o.current.total&&d(o.current.entities.length,$)}),[d]);return s().createElement(p.C,{onReachBottom:E},s().createElement("div",{className:g.Z.header},s().createElement(y.Dy,{as:"h1",variant:y.Dy.canon},l.ag.get("artists")),s().createElement(n.Suspense,{fallback:null},s().createElement(z,{filterPlaceholder:l.ag.get("collection.filter.artists"),sortOptions:_.o$}))),s().createElement(ee.Y,{onCollectionItemRemove:m},s().createElement(A.D,{entities:R(o.current.entities)})))})),ae=s().memo((()=>{const{total:e}=(()=>{const e=(0,n.useContext)(C.H),t=(0,n.useCallback)((()=>e?null==e?void 0:e.getArtists(J):X()),[e]);return V(t)})();return null===e?s().createElement(K.h,{errorMessage:l.ag.get("error.request-collection-artists-failure")}):e?s().createElement(te,{nrArtists:e}):s().createElement(h.u,{message:l.ag.get("collection.empty-page.artists-subtitle"),title:l.ag.get("collection.empty-page.artists-title"),linkTo:"/search",linkTitle:l.ag.get("collection.empty-page.artists-cta")},s().createElement(D.Z,{size:64,viewBox:"0 0 64 64"}))})),ne=s().memo((()=>s().createElement(Z,{uri:"collection/artists",defaultSortOption:P},s().createElement(M.hz,{uri:"collection/artists"},s().createElement(ae,null)))));var se=a(8106);const re=s().memo((({nrAlbums:e})=>{const t=(0,n.useContext)(C.H),{filter:a}=(0,n.useContext)(M.fo),{sortState:r}=(0,n.useContext)(H),c=(0,n.useRef)(!1),o=(0,n.useRef)({entities:[],total:e}),[i,u]=(0,n.useState)(0),d=(0,n.useCallback)((async(e,n,s=!1)=>{if(!c.current){c.current=!s;const l=await t.getAlbums({offset:e,limit:n,filter:(0,_.$u)(a),sort:(0,_.Aq)(r)});o.current=W(l,s,o.current),c.current=!1,u((e=>e+1))}}),[t,a,r,o]),m=(0,n.useCallback)((e=>{o.current=G(e,o.current),u((e=>e+1))}),[]);(0,n.useEffect)((()=>{d(0,$,!!i)}),[a,r]);const E=(0,n.useCallback)((()=>{o.current.entities.length!==o.current.total&&d(o.current.entities.length,$)}),[d,o]);return s().createElement(p.C,{onReachBottom:E},s().createElement("div",{className:g.Z.header},s().createElement(y.Dy,{as:"h1",variant:y.Dy.canon},l.ag.get("albums")),s().createElement(n.Suspense,{fallback:null},s().createElement(z,{filterPlaceholder:l.ag.get("collection.filter.albums"),sortOptions:_.Ru}))),s().createElement(ee.Y,{onCollectionItemRemove:m},s().createElement(A.D,{entities:R(o.current.entities)})))})),ce=s().memo((()=>{const{total:e}=(()=>{const e=(0,n.useContext)(C.H),t=(0,n.useCallback)((()=>e?null==e?void 0:e.getAlbums(J):X()),[e]);return V(t)})();return null===e?s().createElement(K.h,{errorMessage:l.ag.get("error.request-collection-albums-failure")}):e?s().createElement(re,{nrAlbums:e}):s().createElement(h.u,{linkTo:"/search",linkTitle:l.ag.get("collection.empty-page.albums-cta"),message:l.ag.get("collection.empty-page.albums-subtitle"),title:l.ag.get("collection.empty-page.albums-title")},s().createElement(se.Z,null))})),le=s().memo((()=>s().createElement(Z,{uri:"collection/albums",defaultSortOption:w},s().createElement(M.hz,{uri:"collection/albums"},s().createElement(ce,null)))));var oe=a(92416),ie=a(79153),ue=a(60042),de=a.n(ue);const me="collection-collectionEntityHeroCard-container",Ee="collection-collectionEntityHeroCard-likedSongs",fe="collection-collectionEntityHeroCard-yourEpisodes",ge="collection-collectionEntityHeroCard-headerContainer",be="collection-collectionEntityHeroCard-tracksContainer",pe="collection-collectionEntityHeroCard-skeletonRow",Ae="collection-collectionEntityHeroCard-descriptionContainer",he="collection-collectionEntityHeroCard-opacityText";var De=a(54649),ye=a(4783),Ce=a(53089),ve=a(50760);function Te(e,t=null){return Array.from(new Array(e).keys()).map((e=>s().createElement("div",{className:pe,style:{width:t?`${t}ch`:void 0},key:e})))}const Se=({entity:e={},onClick:t})=>{const a=(0,ye.MY)({limit:7}),{name:n="",uri:r=""}=e;return s().createElement(De.Z,{className:de()(me,Ee),onClick:t,headerText:n,uri:r,renderCardImage:()=>s().createElement("div",{className:ge},s().createElement("div",{className:be},a?a.items.map((({uri:e,name:t,artists:[a]},n)=>s().createElement("span",{key:e},s().createElement("span",{className:he},n?" • ":""),s().createElement("span",{dir:"auto"},a.name),s().createElement("span",{dir:"auto",className:he},t)))):Te(3))),renderSubHeaderContent:()=>s().createElement("div",{className:Ae},a?`${a.totalLength} ${n}`:Te(1,n.length))})},Le=({entity:e={}})=>{const t=(0,ye.j$)({limit:7});if(!(0,Ce.W6)(ve.eh)||0===(null==t?void 0:t.totalLength))return null;const{name:a="",uri:n=""}=e;return s().createElement(De.Z,{className:de()(me,fe),headerText:a,uri:n,renderCardImage:()=>s().createElement("div",{className:ge},s().createElement("div",{className:be},t?t.items.map((({uri:e,name:t,show:a},n)=>s().createElement("span",{key:e},s().createElement("span",{className:he},n?" • ":""),s().createElement("span",{dir:"auto"},t),s().createElement("span",{dir:"auto",className:he},a.name)))):Te(3))),renderSubHeaderContent:()=>s().createElement("div",{className:Ae},t?l.ag.get("tracklist-header.episodes-counter",t.totalLength):Te(1,a.length))})};var _e=a(47620),ke=a(61104),Ne=a(2620);const Oe="collection-localFilesCardIcon-container",Re="collection-localFilesCardIcon-icon";var we=a(49329);const Pe=()=>s().createElement("div",{className:Oe},s().createElement(we.X,{className:Re}));var Ie=a(31258),xe=a(24817),Me=a(53877),Be=a(23301),Ye=a(8131),Qe=a(59908),Ue=a(85261);const He=function({entity:e}){const t=(0,_e.ui)(),{name:a,uri:c,images:o}=e,i=(0,r.oR)(),u=(0,n.useRef)(null),d=(0,n.useRef)(!0),m=(0,n.useContext)(xe.t),f=(0,r.v9)((e=>(0,Me.QL)(e,Ye.bf)));(0,n.useEffect)((()=>(d.current=!0,()=>{d.current=!1})),[]);const{useNamespacedLocalStorage:g}=(0,n.useContext)(Qe.Xz),[b]=g(Ue.J,!1),p=(0,E.y)((async()=>{const e=i.getState(),t=(0,Me.d6)(e,Ye.bf);if((0,Me.QL)(e,Ye.bf))i.dispatch((0,Be.wO)());else if(t)i.dispatch((0,Be.v4)());else{if(!u.current){const e=await m.getContents();u.current=e.items}d&&i.dispatch((0,Be.cV)(0,u.current,Ye.bf))}}),Ie.s_);return t.canFetchAllTracks&&b?s().createElement(ke.Z,{delegatePlayback:!0,delegateLogging:!0,isPlaying:f,onPlay:p,headerText:a,uri:c,renderCardImage:()=>s().createElement(Ne.x,{images:o,fallback:{Component:Pe}}),renderSubHeaderContent:()=>s().createElement("span",null,l.ag.get("local-files.description"))}):null},Ze=function(e){return s().createElement(n.Suspense,{fallback:null},s().createElement(He,e))};var je=a(79313),ze=a(30565),Fe=a(49941),qe=a(72559),$e=a(27577);const We=({metadata:e})=>{const{isPlaying:t,togglePlay:a}=(0,Fe.n)({uri:e.uri},{featureIdentifier:"your_library"}),{name:n,images:r}=e;return s().createElement(ke.Z,{delegatePlayback:!0,delegateLogging:!0,isPlaying:t,onPlay:a,headerText:n,uri:e.uri,renderCardImage:()=>s().createElement(Ne.x,{images:r,hasRoundedCorners:!0,fallback:{Component:qe.$}}),renderSubHeaderContent:()=>s().createElement("span",null,l.ag.get("tracklist-header.episodes-counter",e.totalLength)),className:$e.Z.episodeCard})},Ge=()=>{const e=(0,je.x)();return e&&e.totalLength>0?s().createElement(ze.F,{property:ve.eh,renderNewExperience:()=>s().createElement(We,{metadata:e})}):null};var Ve=a(29467),Xe=a(7593),Je=a(92315),Ke=a(85104),et=a(2146),tt=a(102),at=a(59960),nt=a(26713);function st(e){if((0,Ke.lU)(e)){return e.items.map(st).reduce(((e,t)=>e.concat(t)),[])}return(0,Ke.no)(e)?[e]:[]}function rt(e){return Boolean(e)}const ct=s().memo((()=>{const e=(0,r.I0)(),t=(0,c.k6)(),{filter:a}=(0,n.useContext)(M.fo),{sortState:o}=(0,n.useContext)(H),i=(0,r.v9)(et.Gg).user,u=(0,tt.Cu)({filter:(0,_.$u)(a),sort:(0,_.pT)(o),decorateImagesAndOwner:!0}),d=(0,n.useCallback)((()=>{u&&e((0,nt.cg)(l.ag.get("playlist.new-default-name",(0,at.D)(u)),(({url:e})=>{t.push(e)})))}),[e,t,u]),m=(0,n.useCallback)((()=>{const e=a?[]:[(0,oe.I2)(i),(0,oe.bl)(i),(0,oe.gB)(i)].filter(rt),t=null===u?[]:st(u);return e.concat(t).map(((e,t)=>{const a=(n=e).id===oe.G?Se:n.id===oe.nk?Ze:n.id===oe.Y3?Ge:(0,Ve.U)(n.uri);var n;return s().createElement(Xe.ZP,{key:e.uri,value:"card",index:t},s().createElement(a,{entity:e}))}))}),[u,i,a]);return null===u?s().createElement(K.h,{errorMessage:l.ag.get("error.request-current-user-playlists-failure")}):u.recursivePlaylistCount>0||a?s().createElement(s().Fragment,null,s().createElement("div",{className:g.Z.header},s().createElement(y.Dy,{as:"h1",variant:y.Dy.canon},l.ag.get("playlists")),s().createElement(n.Suspense,{fallback:null},s().createElement(z,{filterPlaceholder:l.ag.get("collection.filter.playlists"),sortOptions:_.w0}))),s().createElement(Xe.ZP,{value:"EntitiesGrid"},s().createElement(ie.T,{render:m}))):s().createElement(h.u,{linkTitle:l.ag.get("collection.empty-page.playlists-cta"),onClick:d,title:l.ag.get("collection.empty-page.playlists-title"),message:l.ag.get("collection.empty-page.playlists-subtitle")},s().createElement(Je.Z,null))})),lt=s().memo((()=>s().createElement(Z,{uri:"collection/playlists",defaultSortOption:x},s().createElement(M.hz,{uri:"collection/playlists"},s().createElement(ct,null)))));var ot=a(59843),it=(a(23615),a(15941)),ut=a(57741),dt=a(26855),mt=a(47050);class Et extends n.PureComponent{componentDidMount(){const{entities:e,viewId:t,country:a}=this.props;a&&!e&&t&&this.requestContent(t,a)}componentDidUpdate(e){const{entities:t,viewId:a,country:n}=this.props,{viewId:s}=e;n&&!t&&a!==s&&this.requestContent(a,n)}requestContent(e,t){const{onRequestView:a}=this.props;a(e,t)}render(){const{entities:e,viewId:t,total:a,title:n}=this.props;return e?s().createElement(mt.P,{title:n,total:a,seeAllUri:(0,dt.pL)(t)},e.map((e=>{const t=(0,Ve.U)(e.uri);return s().createElement(t,{key:e.uri,entity:e})}))):null}}const ft={onRequestView:it.MM},gt=((0,r.$j)((e=>{const t="ginger-audio-shows-top-20-web",{content:a={},name:n}=e.entities.views[t]||{},{total:s=0,items:r}=a;return{total:s,title:n,entities:r,viewId:t,country:(0,ut.r)(e)}}),ft)(Et),s().memo((({nrShows:e})=>{const t=(0,n.useContext)(C.H),{filter:a}=(0,n.useContext)(M.fo),{sortState:c}=(0,n.useContext)(H),o=(0,n.useRef)(!1),i=(0,n.useRef)({entities:[],total:e}),[u,d]=(0,n.useState)(0),{user:m}=(0,r.v9)(et.Gg),E=(0,n.useCallback)((async(e,n,s=!1)=>{if(!o.current){o.current=!s;const r=await t.getShows({offset:e,limit:n,filter:(0,_.$u)(a),sort:(0,_.EY)(c)});i.current=W(r,s,i.current),o.current=!1,d((e=>e+1))}}),[t,a,c,i]),f=(0,n.useCallback)((e=>{i.current=G(e,i.current),d((e=>e+1))}),[]);(0,n.useEffect)((()=>{E(0,$,!!u)}),[a,c]);const b=(0,n.useCallback)((()=>{i.current.entities.length!==i.current.total&&E(i.current.entities.length,$)}),[E,i]);return s().createElement(p.C,{onReachBottom:b},s().createElement("div",{className:g.Z.header},s().createElement(y.Dy,{as:"h1",variant:y.Dy.canon},l.ag.get("podcasts")),s().createElement(n.Suspense,{fallback:null},s().createElement(z,{filterPlaceholder:l.ag.get("collection.filter.podcasts"),sortOptions:_.a6}))),s().createElement(ee.Y,{onCollectionItemRemove:f},s().createElement(Xe.ZP,{value:"EntitiesGrid"},s().createElement(ie.T,{render:()=>{const e=(0,oe.bl)(m);return(a||!e?[]:[s().createElement(n.Suspense,{fallback:null,key:"your-episodes-card"},s().createElement(Le,{entity:e}))]).concat(R(i.current.entities).map(((e,t)=>{const a=(0,Ve.U)(e.uri);return s().createElement(Xe.ZP,{key:e.uri,value:"card",index:t},s().createElement(a,{entity:e}))})))}}))))}))),bt=s().memo((()=>{const{total:e}=(()=>{const e=(0,n.useContext)(C.H),t=(0,n.useCallback)((()=>e?null==e?void 0:e.getShows(J):X()),[e]);return V(t)})();return null===e?s().createElement(K.h,{errorMessage:l.ag.get("error.request-collection-shows-failure")}):e?s().createElement(gt,{nrShows:e}):s().createElement("div",{className:"CollectionShowsContainer"},s().createElement(h.u,{linkTo:"/genre/podcasts-web",linkTitle:l.ag.get("collection.empty-page.shows-cta"),message:l.ag.get("collection.empty-page.shows-subtitle"),title:l.ag.get("collection.empty-page.shows-title")},s().createElement(ot.Z,null)),s().createElement(Et,null))})),pt=s().memo((()=>s().createElement(Z,{uri:"collection/podcasts",defaultSortOption:I},s().createElement(M.hz,{uri:"collection/podcasts"},s().createElement(bt,null))))),At=s().lazy((async()=>await a.e(246).then(a.bind(a,6103)))),ht=()=>{const e=(0,r.v9)(o),t=(0,r.I0)();return(0,n.useEffect)((()=>{t((0,i.Dk)(l.ag.get("collection.page-title")))}),[t]),s().createElement("section",{className:"contentSpacing"},s().createElement(c.AW,{path:"/collection/artists"},s().createElement(ne,null)),s().createElement(c.AW,{path:"/collection/albums"},s().createElement(le,null)),s().createElement(c.AW,{path:"/collection/playlists"},s().createElement(lt,null)),e&&s().createElement(c.AW,{path:"/collection/podcasts"},s().createElement(pt,null)),s().createElement(c.AW,{path:"/collection/music-downloads"},s().createElement(At,null)),s().createElement(b,null))},Dt=ht},29088:(e,t,a)=>{"use strict";a.d(t,{u:()=>g});var n=a(27378),s=a.n(n),r=a(60042),c=a.n(r),l=a(53177),o=a(35415);const i="x-emptyState-container",u="x-emptyState-renderInline",d="x-emptyState-button",m="x-emptyState-title",E="x-emptyState-subtitle";var f=a(53267);const g=s().memo((e=>{const{children:t,message:a,title:n,linkTitle:r,linkTo:g,onClick:b,renderInline:p=!1}=e,{isXSOnly:A,isSMOnly:h}=(0,f.e)(),D=A||h;return s().createElement("section",{className:c()(i,{[u]:p})},t,s().createElement(l.Dy.h1,{variant:D?l.Dy.cello:l.Dy.alto,className:m},n),s().createElement(l.Dy,{variant:D?l.Dy.mesto:l.Dy.ballad,className:E},a),r&&(g||b)&&s().createElement(o.z,{version:"secondary",className:d,linkTo:g,onClick:b},r))}))},77964:(e,t,a)=>{"use strict";a.d(t,{K:()=>f});var n=a(27378),s=a.n(n);const r={filterInputContainer:"x-filterBox-filterInputContainer",expanded:"x-filterBox-expanded",expandButton:"x-filterBox-expandButton",filterInput:"x-filterBox-filterInput",overlay:"x-filterBox-overlay",searchIconContainer:"x-filterBox-searchIconContainer",searchIcon:"x-filterBox-searchIcon",clearButton:"x-filterBox-clearButton"};var c=a(747),l=a(61043),o=a(27012),i=a(43763),u=a(38533),d=a(72519),m=a(60042),E=a.n(m);const f=s().memo((({alwaysExpanded:e=!1,placeholder:t})=>{const{filter:a,setFilter:m}=(0,n.useContext)(u.fo),[f,g]=(0,n.useState)(e||!!a),[b,p]=(0,n.useState)(a),A=(0,n.useRef)(null);(0,o.J4)(o.sN.FILTER);const h=(0,n.useCallback)((()=>{g(!0),A.current&&A.current.focus()}),[g]);(0,o.eY)(o.O4.FILTER,h);const D=(0,d.y)((e=>{m(e)}),200),y=(0,n.useCallback)((e=>{const t=e.currentTarget.value;p(t),D(t)}),[D,p]),C=(0,n.useCallback)((()=>{A.current&&A.current.focus(),p(""),D("")}),[D,p]),v=(0,n.useCallback)((e=>{"Escape"===e.key&&b&&C()}),[b,C]),T=(0,n.useCallback)((()=>{b||e||g(!1)}),[b,e,g]);return s().createElement("div",{className:E()(r.filterInputContainer,{[r.expanded]:f}),role:"search"},s().createElement("input",{ref:A,className:E()(r.filterInput),role:"searchbox",maxLength:80,autoCorrect:"off",autoCapitalize:"off",spellCheck:!1,placeholder:t,onChange:y,onKeyDown:v,onBlur:T,value:b}),s().createElement("div",{className:r.overlay},s().createElement("span",{className:r.searchIconContainer},s().createElement(i.h,{iconSize:16,className:r.searchIcon,"aria-hidden":!0})),b&&s().createElement("button",{className:r.clearButton,onClick:C,"aria-label":l.ag.get("search.a11y.clear-input")},s().createElement(c.Z,{size:16,className:r.filterInputIcon}))),s().createElement("button",{className:r.expandButton,onClick:h,"data-testid":"expand-button"},s().createElement(i.h,{iconSize:16,className:r.searchIcon})))}))},85261:(e,t,a)=>{"use strict";a.d(t,{J:()=>p,P:()=>A});var n=a(42065),s=a(61043),r=a(37339),c=a(27378),l=a.n(c),o=a(35415),i=a(53177),u=a(34514);const d=({source:e,onAddOrRemoveSource:t})=>{const[a,s]=(0,c.useState)(e.enabled);return l().createElement(l().Fragment,null,l().createElement(i.Dy,{as:"span",variant:i.Dy.mesto,color:u.gray70,htmlFor:`settings.local-files.${e.id}`},e.name),l().createElement(r.Z,{className:n.Z.secondColumn,id:`settings.local-files.${e.id}`,value:a,onSelected:a=>{s(a),t(e.id,a)}}))};var m=a(93592),E=a(24817);const f=new m.J({idPrefix:"local-files-sources-live-region-"}),g=()=>{const[e,t]=(0,c.useState)([]),a=(0,c.useContext)(E.t),r=(0,c.useCallback)((async()=>t(await a.getSources())),[a]);(0,c.useEffect)((()=>{r()}),[r]),(0,c.useEffect)((()=>f.clearNode()),[]);const u=(0,c.useCallback)((async()=>{const e=await a.browseForFolder();e.path&&(await a.addSource(e.path),r(),f.say(s.ag.get("settings.localFilesFolderAdded",e.path)))}),[a,r]),m=(0,c.useCallback)(((e,t)=>{t?a.addSource(e):a.removeSource(e)}),[a]);return l().createElement(l().Fragment,null,l().createElement(i.Dy,{as:"h3",variant:i.Dy.balladBold,className:n.Z.title},s.ag.get("settings.showSongsFrom")),e.map((e=>e.found?l().createElement(d,{key:e.id,source:e,onAddOrRemoveSource:m}):null)),l().createElement(o.z,{"aria-label":s.ag.get("settings.addASource"),className:n.Z.button,version:"outlined",onClick:()=>{u()}},s.ag.get("settings.addASource")))};var b=a(59908);const p="showLocalFiles",A=()=>{const{useNamespacedLocalStorage:e}=(0,c.useContext)(b.Xz),[t,a]=e(p,!1);return l().createElement(l().Fragment,null,l().createElement(i.Dy,{as:"h2",variant:i.Dy.cello,className:n.Z.title},s.ag.get("settings.localFiles")),l().createElement(i.Dy,{as:"label",variant:i.Dy.mesto,color:u.gray70,htmlFor:"settings.showLocalFiles"},s.ag.get("settings.showLocalFiles")),l().createElement(r.Z,{className:n.Z.secondColumn,id:"settings.showLocalFiles",value:t,onSelected:e=>{a(e)}}),t?l().createElement(g,null):null)}},48578:(e,t,a)=>{"use strict";a.d(t,{A:()=>E});var n=a(27378),s=a.n(n),r=a(60042),c=a.n(r);const l={sortDropdown:"x-sortBox-sortDropdown",sortDropdownChanged:"x-sortBox-sortDropdownChanged",dropdownItem:"_412c9016173a00119079f27f88da89ea-scss",dropdownItemSelected:"_56266c60cafad920f6b3f6fc18ba30ed-scss"};var o=a(1041),i=a(53177),u=a(55357),d=a(84638),m=a(78052);const E=({options:e,selected:t,onSelect:a,isSelectionChanged:n})=>{const[r]=e,E=e.map((({key:e,value:n})=>{const r=e===t.key;return s().createElement(o.hP,{className:c()(l.dropdownItem,{[l.dropdownItemSelected]:r}),key:e,onClick:()=>a(e)},s().createElement(i.Dy,{variant:i.Dy.mesto},n),r&&s().createElement(u.R,{iconSize:16}))})),f=n?n(t):t!==r;return s().createElement(o.Lt,{items:E,render:(e,a)=>s().createElement("button",{className:c()(l.sortDropdown,{[l.sortDropdownChanged]:f,[l.boxActive]:e}),type:"button",onClick:a,"aria-expanded":e},s().createElement(i.Dy,{variant:i.Dy.mesto},t.value),e?s().createElement(d.q,{iconSize:16}):s().createElement(m.m,{iconSize:16}))})}},97186:(e,t,a)=>{"use strict";a.d(t,{oT:()=>i,ei:()=>u,MY:()=>d,$u:()=>m,Ru:()=>E,Aq:()=>g,o$:()=>b,e3:()=>A,a6:()=>h,EY:()=>y,w0:()=>C,pT:()=>T,Hp:()=>S,mE:()=>L});var n=a(33747),s=a(96582),r=a(85104),c=a(61043),l=a(44471),o=a(38517);let i;!function(e){e.SHOW_ALPHABETICAL="SHOW_ALPHABETICAL",e.PLAYLIST_ALPHABETICAL="PLAYLIST_ALPHABETICAL",e.ALBUM_ALPHABETICAL="ALBUM_ALPHABETICAL",e.ADDED_AT="ADDED_AT",e.CREATOR_NAME="CREATOR_NAME",e.ALBUM_CREATOR_NAME="ALBUM_CREATOR_NAME",e.RECENTLY_PLAYED="RECENTLY_PLAYED",e.MOST_RELEVANT="MOST_RELEVANT",e.CUSTOM_ORDER="CUSTOM_ORDER"}(i||(i={}));const u={"show-alphabetical":i.SHOW_ALPHABETICAL,"playlist-alphabetical":i.PLAYLIST_ALPHABETICAL,"album-alphabetical":i.ALBUM_ALPHABETICAL,"recently-added":i.ADDED_AT,"creator-name":i.CREATOR_NAME,"album-creator-name":i.ALBUM_CREATOR_NAME,"recently-played":i.RECENTLY_PLAYED,"playlist-most-relevant":i.MOST_RELEVANT,"playlist-custom-order":i.CUSTOM_ORDER},d={[i.RECENTLY_PLAYED]:{key:"recently-played",value:c.ag.get("collection.sort.recently-played")},[i.ADDED_AT]:{key:"recently-added",value:c.ag.get("collection.sort.recently-added")},[i.SHOW_ALPHABETICAL]:{key:"show-alphabetical",value:c.ag.get("collection.sort.alphabetical")},[i.PLAYLIST_ALPHABETICAL]:{key:"playlist-alphabetical",value:c.ag.get("collection.sort.alphabetical")},[i.ALBUM_CREATOR_NAME]:{key:"album-creator-name",value:c.ag.get("collection.sort.creator")},[i.CREATOR_NAME]:{key:"creator-name",value:c.ag.get("collection.sort.creator")},[i.ALBUM_ALPHABETICAL]:{key:"album-alphabetical",value:c.ag.get("collection.sort.alphabetical")},[i.MOST_RELEVANT]:{key:"playlist-most-relevant",value:c.ag.get("collection.sort.most-relevant")},[i.CUSTOM_ORDER]:{key:"playlist-custom-order",value:c.ag.get("collection.sort.custom-order")}},m=e=>{if(e)return{field:n.R.TEXT,operator:n.p.CONTAINS,value:e.trim()}},E=[i.ADDED_AT,i.ALBUM_ALPHABETICAL,i.CREATOR_NAME],f={[i.ADDED_AT]:{field:s.lY.ADDED_AT,order:s.As.DESC},[i.ALBUM_ALPHABETICAL]:{field:s.lY.NAME,order:s.As.ASC},[i.CREATOR_NAME]:{field:s.lY.ARTIST_NAME,order:s.As.ASC}},g=e=>{if(E.includes(e))return f[e]},b=[i.ADDED_AT,i.CREATOR_NAME],p={[i.ADDED_AT]:{field:s.hx.ADDED_AT,order:s.As.DESC},[i.CREATOR_NAME]:{field:s.hx.NAME,order:s.As.ASC}},A=e=>{if(b.includes(e))return p[e]},h=[i.ADDED_AT,i.SHOW_ALPHABETICAL],D={[i.ADDED_AT]:{field:s.hx.ADDED_AT,order:s.As.DESC},[i.SHOW_ALPHABETICAL]:{field:s.aW.NAME,order:s.As.ASC}},y=e=>{if(h.includes(e))return D[e]},C=[i.MOST_RELEVANT,i.RECENTLY_PLAYED,i.ADDED_AT,i.PLAYLIST_ALPHABETICAL,i.CUSTOM_ORDER],v={[i.ADDED_AT]:{field:r.bD.ADDED_AT,order:r.As.DESC},[i.RECENTLY_PLAYED]:{field:r.bD.RECENTLY_PLAYED,order:r.As.ASC},[i.PLAYLIST_ALPHABETICAL]:{field:r.bD.NAME,order:r.As.ASC},[i.MOST_RELEVANT]:{field:r.bD.RELEVANCE,order:r.As.DESC},[i.CUSTOM_ORDER]:void 0},T=e=>{if(C.includes(e))return v[e]},S={"custom-order":l.I5,title:{column:o.QD.TITLE,order:o.kn.ASC},artist:{column:o.QD.TITLE,order:o.kn.SECONDARY_ASC},"added-by":{column:o.QD.ADDED_BY,order:o.kn.ASC},"added-at":{column:o.QD.ADDED_AT,order:o.kn.ASC},duration:{column:o.QD.DURATION,order:o.kn.ASC},album:{column:o.QD.ALBUM,order:o.kn.ASC},"album-or-podcast":{column:o.QD.ALBUM_OR_PODCAST,order:o.kn.ASC}},L={[o.QD.INDEX]:{key:"custom-order",value:c.ag.get("collection.sort.custom-order")},[o.QD.TITLE]:{key:"title",value:c.ag.get("tracklist.header.title")},[o.QD.ARTIST]:{key:"artist",value:c.ag.get("collection.sort.artist")},[o.QD.ADDED_BY]:{key:"added-by",value:c.ag.get("tracklist.header.added-by")},[o.QD.ADDED_AT]:{key:"added-at",value:c.ag.get("tracklist.header.date-added")},[o.QD.DURATION]:{key:"duration",value:c.ag.get("tracklist.header.duration")},[o.QD.ALBUM]:{key:"album",value:c.ag.get("tracklist.header.album")},[o.QD.ALBUM_OR_PODCAST]:{key:"album-or-podcast",value:c.ag.get("tracklist.header.album-or-podcast")},[o.QD.PLAYS]:null,[o.QD.RELEASE_DATE]:null,[o.QD.ADD]:null,[o.QD.ACTIONS]:null}},94212:(e,t,a)=>{"use strict";a.d(t,{n:()=>y});var n=a(27378),s=a.n(n),r=a(60042),c=a.n(r),l=a(79651),o=a(61043),i=a(1041);const u="queue-tabBar-nav",d="queue-tabBar-headerCentered",m="queue-tabBar-headerItem",E="queue-tabBar-moreButton",f="queue-tabBar-moreButtonActive",g="queue-tabBar-dropdownItemLink",b="queue-tabBar-headerItemLink",p="queue-tabBar-active",A="queue-tabBar-header",h="queue-tabBar-chevron";var D=a(53177);const y=s().memo((({isCentered:e,links:t,landmarkLabel:a,className:r,windowSize:y=1/0})=>{const[C,v]=(0,n.useState)(null),T=(0,n.useRef)(null),[S,L]=(0,n.useState)([]),[_,k]=(0,n.useState)(0),[N,O]=(0,n.useState)([]);(0,n.useEffect)((()=>{T.current&&k(T.current.clientWidth)}),[y]),(0,n.useEffect)((()=>{if(!T.current)return;const e=Array.from(T.current.children).map((e=>e.clientWidth));L(e)}),[t]),(0,n.useEffect)((()=>{if(!T.current)return;if(S.slice(0,-1).reduce(((e,t)=>e+t),0)<=_)return void O([]);const e=S.reduce(((e,t)=>e>t?e:t),0),t=[];let a=e;S.forEach(((e,n)=>{_>=a+e?a+=e:t.push(n)})),O(t)}),[_,S]);const R=(0,n.useCallback)((e=>!!e&&(v(null),!0)),[]),w=(0,n.useCallback)(((e,t)=>s().createElement("button",{className:c()(E,{[f]:C}),type:"button",onClick:t,"aria-expanded":e},s().createElement(D.Dy,{as:"span",variant:D.Dy.mestoBold},C?C.title:o.ag.get("more")),s().createElement("span",{className:c()(h,{"spoticon-chart-up-16":e,"spoticon-chart-down-16":!e})}))),[C]),P=(0,n.useMemo)((()=>t.map(((e,t)=>N.includes(t)?s().createElement(i.hP,{exact:!0,className:g,activeClassName:p,to:e.to,selected:e.itemId===(C&&C.itemId),isActive:t=>!!t&&(v(e),!0),onClick:()=>{v(e)}},e.title):null))),[N,t,C]);return s().createElement("nav",{className:c()(r,u),"aria-label":a},s().createElement("ul",{className:e?d:A,ref:T},t.map(((e,t)=>N.includes(t)?null:s().createElement("li",{key:e.to,className:m},s().createElement(l.O,{exact:!0,className:b,activeClassName:p,to:e.to,isActive:R},s().createElement(D.Dy,{variant:D.Dy.mestoBold},e.title))))),N.length||0===S.length?s().createElement("li",{className:m},s().createElement(i.Lt,{items:P,render:w})):null))}))},37339:(e,t,a)=>{"use strict";a.d(t,{Z:()=>d});const n="x-toggle-wrapper",s="x-toggle-indicatorWrapper",r="x-toggle-input",c="x-toggle-indicator";var l=a(60042),o=a.n(l),i=a(27378),u=a.n(i);const d=({value:e,disabled:t,onSelected:a,id:l,className:i})=>u().createElement("label",{className:o()(n,i)},u().createElement("input",{id:l,className:r,type:"checkbox",disabled:t,checked:e,onChange:e=>{const t=e.target.checked;a(t)}}),u().createElement("span",{className:s},u().createElement("span",{className:c})))},44471:(e,t,a)=>{"use strict";a.d(t,{P0:()=>o,MI:()=>i,RJ:()=>u,zq:()=>d,I5:()=>m,Gb:()=>E,kz:()=>f});var n=a(27378),s=a.n(n),r=a(31099),c=a(76190),l=a(38517);const o=[l.QD.INDEX,l.QD.TITLE,l.QD.ALBUM,l.QD.ADDED_AT],i=[l.QD.INDEX,l.QD.TITLE,l.QD.ALBUM,l.QD.DURATION],u=[l.QD.INDEX,l.QD.TITLE,l.QD.ALBUM,l.QD.DURATION],d=[l.QD.INDEX,l.QD.TITLE,l.QD.ALBUM,l.QD.ALBUM_OR_PODCAST,l.QD.ADDED_BY,l.QD.ADDED_AT,l.QD.DURATION],m={column:null,order:r.k.NONE},E=(0,n.createContext)({setSortState:()=>{throw new Error("setSortState must be used within a TracksSortProvider")},sortState:m}),f=s().memo((({uri:e,children:t})=>s().createElement(c.r,{uri:e,defaultState:m,sortContext:E},t)))},72559:(e,t,a)=>{"use strict";a.d(t,{$:()=>l});var n=a(27378),s=a.n(n),r=a(85485),c=a(27577);const l=()=>s().createElement("div",{className:c.Z.coverContainer},s().createElement(r.P,{iconSize:64,className:c.Z.coverIcon}))},79313:(e,t,a)=>{"use strict";a.d(t,{x:()=>o});var n=a(61043),s=a(4783),r=a(79308),c=a(2146),l=a(13559);function o(){const e=(0,s.j$)({offset:0,limit:1}),{user:t}=(0,r.v9)(c.Gg);if(null===e||null===t)return null;return{uri:`spotify:user:${t.id}:collection:your-episodes`,name:n.ag.get("sidebar.your_episodes"),images:[],totalLength:null==e?void 0:e.totalLength,owner:(0,l.V3)(t)}}},4783:(e,t,a)=>{"use strict";a.d(t,{j$:()=>d,MY:()=>u});var n=a(27378),s=a(52033),r=a(33644);var c=a(46903),l=a(85583);const o=s.EW.UPDATE;function i(e,t){const a=(0,n.useContext)(r.H),[s,c]=(0,n.useState)(null),i=(0,n.useCallback)((async n=>{e===n.data.list&&c(await t(a))}),[a,e,t]);return(0,n.useEffect)((()=>{i(new l.B(o,{list:e}))}),[i,e]),function(e,t){const a=(0,n.useContext)(r.H);(0,n.useEffect)((()=>{const n=a.getEvents();return n.addListener(e,t),()=>{n.removeListener(e,t)}}),[e,t,a])}(o,i),s}function u(e){return i(s.XD.TRACKS,(0,c.jP)((t=>t.getTracks(e)),[e]))}function d(e){return i(s.XD.EPISODES,(0,c.jP)((t=>t.getEpisodes(e)),[e]))}},49941:(e,t,a)=>{"use strict";a.d(t,{n:()=>f});var n=a(27378),s=a(72535),r=a(51674),c=a(6205);var l=a(31682),o=a(66917),i=a.n(o),u=a(40731);function d(e,t){var a;const n=i().from(e),s=i().from(t);return null!==(a=null==n?void 0:n.isSameIdentity(s))&&void 0!==a&&a}function m(e){return null!==e&&e.isPlaying?e.isPaused?u.q.PAUSED:u.q.PLAYING:u.q.NOT_PLAYING}function E(e,t){return null!==e&&d(e.context.uri,t)?m(e):u.q.NOT_PLAYING}function f(e,t,a){const o=(0,s.g)(),i=E(function(){const e=(0,s.g)(),[t,a]=(0,n.useState)(e.getState());return(0,c.G)(r.r.UPDATE,(e=>a(e.data))),t}(),e.uri),u=(0,n.useCallback)((()=>{switch(i){case l.q9.NOT_PLAYING:default:o.play(e,t,a);break;case l.q9.PLAYING:o.pause();break;case l.q9.PAUSED:o.resume()}}),[o,i,e,t,a]);return{isPlaying:i===l.q9.PLAYING,togglePlay:u}}},93592:(e,t,a)=>{"use strict";a.d(t,{J:()=>r});var n=a(65526),s=a.n(n);class r{constructor(e={}){s()(this,"settings",void 0),s()(this,"currentRegion",void 0),this.settings={level:e.level||"polite",parent:e.parent||document.body,idPrefix:e.idPrefix||"live-region-",delay:e.delay||0},this.currentRegion=document.createElement("span")}say(e,t=this.settings.delay){this.clearNode(),this.currentRegion=document.createElement("span"),this.currentRegion.id=this.settings.idPrefix+Math.floor(1e4*Math.random());const a="assertive"!==this.settings.level?"status":"alert";this.currentRegion.setAttribute("aria-live",this.settings.level),this.currentRegion.setAttribute("role",a),this.currentRegion.setAttribute("style","clip: rect(1px, 1px, 1px, 1px); height: 1px; overflow: hidden; position: absolute; white-space: nowrap; width: 1px"),this.settings.parent.appendChild(this.currentRegion),window.setTimeout((()=>{this.currentRegion.textContent=e}),t)}clearNode(){const e=this.settings.parent.querySelector(`[id^="${this.settings.idPrefix}"]`);e&&this.settings.parent.removeChild(e)}}},94578:(e,t,a)=>{"use strict";a.d(t,{Z:()=>n});const n={header:"collection-collection-header",tabBar:"collection-collection-tabBar",AddToPlaylistIcon:"collection-collection-AddToPlaylistIcon"}},42065:(e,t,a)=>{"use strict";a.d(t,{Z:()=>n});const n={container:"x-settings-container",header:"x-settings-header",secondColumn:"x-settings-secondColumn",facebookButton:"x-settings-facebookButton",buttonContainer:"x-settings-buttonContainer",title:"x-settings-title",button:"x-settings-button",crossFadeContainer:"x-settings-crossFadeContainer",restartAppButton:"x-settings-restartAppButton",input:"x-settings-input"}},27577:(e,t,a)=>{"use strict";a.d(t,{Z:()=>n});const n={yourEpisodes:"main-yourEpisodes-yourEpisodes",coverContainer:"main-yourEpisodes-coverContainer",episodeCard:"main-yourEpisodes-episodeCard",coverIcon:"main-yourEpisodes-coverIcon"}}}]);