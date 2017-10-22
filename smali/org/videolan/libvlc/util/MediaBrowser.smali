.class public Lorg/videolan/libvlc/util/MediaBrowser;
.super Ljava/lang/Object;
.source "MediaBrowser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/util/MediaBrowser$EventListener;,
        Lorg/videolan/libvlc/util/MediaBrowser$Flag;
    }
.end annotation


# static fields
.field private static final IGNORE_LIST_OPTION:Ljava/lang/String; = ":ignore-filetypes="

.field private static final TAG:Ljava/lang/String; = "MediaBrowser"


# instance fields
.field private mAlive:Z

.field private mBrowserMediaList:Lorg/videolan/libvlc/MediaList;

.field private final mBrowserMediaListEventListener:Lorg/videolan/libvlc/MediaList$EventListener;

.field private final mDiscovererMediaArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/videolan/libvlc/Media;",
            ">;"
        }
    .end annotation
.end field

.field private final mDiscovererMediaListEventListener:Lorg/videolan/libvlc/MediaList$EventListener;

.field private mEventListener:Lorg/videolan/libvlc/util/MediaBrowser$EventListener;

.field private mIgnoreList:Ljava/lang/String;

.field private final mLibVlc:Lorg/videolan/libvlc/LibVLC;

.field private mMedia:Lorg/videolan/libvlc/Media;

.field private final mMediaDiscoverers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/videolan/libvlc/MediaDiscoverer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/videolan/libvlc/LibVLC;Lorg/videolan/libvlc/util/MediaBrowser$EventListener;)V
    .locals 1
    .param p1, "libvlc"    # Lorg/videolan/libvlc/LibVLC;
    .param p2, "listener"    # Lorg/videolan/libvlc/util/MediaBrowser$EventListener;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mMediaDiscoverers:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mDiscovererMediaArray:Ljava/util/ArrayList;

    .line 45
    const-string v0, "db,nfo,ini,jpg,jpeg,ljpg,gif,png,pgm,pgmyuv,pbm,pam,tga,bmp,pnm,xpm,xcf,pcx,tif,tiff,lbm,sfv,txt,sub,idx,srt,cue,ssa"

    iput-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mIgnoreList:Ljava/lang/String;

    .line 232
    new-instance v0, Lorg/videolan/libvlc/util/MediaBrowser$1;

    invoke-direct {v0, p0}, Lorg/videolan/libvlc/util/MediaBrowser$1;-><init>(Lorg/videolan/libvlc/util/MediaBrowser;)V

    iput-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mBrowserMediaListEventListener:Lorg/videolan/libvlc/MediaList$EventListener;

    .line 252
    new-instance v0, Lorg/videolan/libvlc/util/MediaBrowser$2;

    invoke-direct {v0, p0}, Lorg/videolan/libvlc/util/MediaBrowser$2;-><init>(Lorg/videolan/libvlc/util/MediaBrowser;)V

    iput-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mDiscovererMediaListEventListener:Lorg/videolan/libvlc/MediaList$EventListener;

    .line 79
    iput-object p1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mLibVlc:Lorg/videolan/libvlc/LibVLC;

    .line 80
    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mLibVlc:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->retain()Z

    .line 81
    iput-object p2, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mEventListener:Lorg/videolan/libvlc/util/MediaBrowser$EventListener;

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mAlive:Z

    .line 83
    return-void
.end method

.method static synthetic access$0(Lorg/videolan/libvlc/util/MediaBrowser;)Lorg/videolan/libvlc/util/MediaBrowser$EventListener;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mEventListener:Lorg/videolan/libvlc/util/MediaBrowser$EventListener;

    return-object v0
.end method

.method static synthetic access$1(Lorg/videolan/libvlc/util/MediaBrowser;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mDiscovererMediaArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method private reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 86
    iget-object v1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mMediaDiscoverers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 88
    iget-object v1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mMediaDiscoverers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 89
    iget-object v1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mDiscovererMediaArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 90
    iget-object v1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mMedia:Lorg/videolan/libvlc/Media;

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mMedia:Lorg/videolan/libvlc/Media;

    invoke-virtual {v1}, Lorg/videolan/libvlc/Media;->release()V

    .line 92
    iput-object v3, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mMedia:Lorg/videolan/libvlc/Media;

    .line 95
    :cond_0
    iget-object v1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mBrowserMediaList:Lorg/videolan/libvlc/MediaList;

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mBrowserMediaList:Lorg/videolan/libvlc/MediaList;

    invoke-virtual {v1}, Lorg/videolan/libvlc/MediaList;->release()V

    .line 97
    iput-object v3, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mBrowserMediaList:Lorg/videolan/libvlc/MediaList;

    .line 99
    :cond_1
    return-void

    .line 86
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/libvlc/MediaDiscoverer;

    .line 87
    .local v0, "md":Lorg/videolan/libvlc/MediaDiscoverer;
    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaDiscoverer;->release()V

    goto :goto_0
.end method

.method private startMediaDiscoverer(Ljava/lang/String;)V
    .locals 3
    .param p1, "discovererName"    # Ljava/lang/String;

    .prologue
    .line 122
    new-instance v0, Lorg/videolan/libvlc/MediaDiscoverer;

    iget-object v2, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mLibVlc:Lorg/videolan/libvlc/LibVLC;

    invoke-direct {v0, v2, p1}, Lorg/videolan/libvlc/MediaDiscoverer;-><init>(Lorg/videolan/libvlc/LibVLC;Ljava/lang/String;)V

    .line 123
    .local v0, "md":Lorg/videolan/libvlc/MediaDiscoverer;
    iget-object v2, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mMediaDiscoverers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaDiscoverer;->getMediaList()Lorg/videolan/libvlc/MediaList;

    move-result-object v1

    .line 125
    .local v1, "ml":Lorg/videolan/libvlc/MediaList;
    iget-object v2, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mDiscovererMediaListEventListener:Lorg/videolan/libvlc/MediaList$EventListener;

    invoke-virtual {v1, v2}, Lorg/videolan/libvlc/MediaList;->setEventListener(Lorg/videolan/libvlc/MediaList$EventListener;)V

    .line 126
    invoke-virtual {v1}, Lorg/videolan/libvlc/MediaList;->release()V

    .line 127
    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaDiscoverer;->start()Z

    .line 128
    return-void
.end method


# virtual methods
.method public browse(Landroid/net/Uri;I)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "flags"    # I

    .prologue
    .line 174
    new-instance v0, Lorg/videolan/libvlc/Media;

    iget-object v1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mLibVlc:Lorg/videolan/libvlc/LibVLC;

    invoke-direct {v0, v1, p1}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/LibVLC;Landroid/net/Uri;)V

    .line 175
    .local v0, "media":Lorg/videolan/libvlc/Media;
    invoke-virtual {p0, v0, p2}, Lorg/videolan/libvlc/util/MediaBrowser;->browse(Lorg/videolan/libvlc/Media;I)V

    .line 176
    invoke-virtual {v0}, Lorg/videolan/libvlc/Media;->release()V

    .line 177
    return-void
.end method

.method public browse(Ljava/lang/String;I)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 162
    new-instance v0, Lorg/videolan/libvlc/Media;

    iget-object v1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mLibVlc:Lorg/videolan/libvlc/LibVLC;

    invoke-direct {v0, v1, p1}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/LibVLC;Ljava/lang/String;)V

    .line 163
    .local v0, "media":Lorg/videolan/libvlc/Media;
    invoke-virtual {p0, v0, p2}, Lorg/videolan/libvlc/util/MediaBrowser;->browse(Lorg/videolan/libvlc/Media;I)V

    .line 164
    invoke-virtual {v0}, Lorg/videolan/libvlc/Media;->release()V

    .line 165
    return-void
.end method

.method public browse(Lorg/videolan/libvlc/Media;I)V
    .locals 3
    .param p1, "media"    # Lorg/videolan/libvlc/Media;
    .param p2, "flags"    # I

    .prologue
    .line 189
    invoke-virtual {p1}, Lorg/videolan/libvlc/Media;->retain()Z

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ":ignore-filetypes="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mIgnoreList:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    .line 191
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_0

    .line 192
    const-string v1, ":no-sub-autodetect-file"

    invoke-virtual {p1, v1}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    .line 193
    :cond_0
    const/4 v0, 0x1

    .line 194
    .local v0, "mediaFlags":I
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_1

    .line 195
    or-int/lit8 v0, v0, 0x8

    .line 196
    :cond_1
    invoke-direct {p0}, Lorg/videolan/libvlc/util/MediaBrowser;->reset()V

    .line 197
    invoke-virtual {p1}, Lorg/videolan/libvlc/Media;->subItems()Lorg/videolan/libvlc/MediaList;

    move-result-object v1

    iput-object v1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mBrowserMediaList:Lorg/videolan/libvlc/MediaList;

    .line 198
    iget-object v1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mBrowserMediaList:Lorg/videolan/libvlc/MediaList;

    iget-object v2, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mBrowserMediaListEventListener:Lorg/videolan/libvlc/MediaList$EventListener;

    invoke-virtual {v1, v2}, Lorg/videolan/libvlc/MediaList;->setEventListener(Lorg/videolan/libvlc/MediaList$EventListener;)V

    .line 199
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/videolan/libvlc/Media;->parseAsync(II)Z

    .line 200
    iput-object p1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mMedia:Lorg/videolan/libvlc/Media;

    .line 201
    return-void
.end method

.method public changeEventListener(Lorg/videolan/libvlc/util/MediaBrowser$EventListener;)V
    .locals 0
    .param p1, "eventListener"    # Lorg/videolan/libvlc/util/MediaBrowser$EventListener;

    .prologue
    .line 117
    invoke-direct {p0}, Lorg/videolan/libvlc/util/MediaBrowser;->reset()V

    .line 118
    iput-object p1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mEventListener:Lorg/videolan/libvlc/util/MediaBrowser$EventListener;

    .line 119
    return-void
.end method

.method public discoverNetworkShares()V
    .locals 7

    .prologue
    .line 134
    invoke-direct {p0}, Lorg/videolan/libvlc/util/MediaBrowser;->reset()V

    .line 137
    iget-object v2, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mLibVlc:Lorg/videolan/libvlc/LibVLC;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/videolan/libvlc/MediaDiscoverer;->list(Lorg/videolan/libvlc/LibVLC;I)[Lorg/videolan/libvlc/MediaDiscoverer$Description;

    move-result-object v1

    .line 138
    .local v1, "descriptions":[Lorg/videolan/libvlc/MediaDiscoverer$Description;
    if-nez v1, :cond_1

    .line 144
    :cond_0
    return-void

    .line 140
    :cond_1
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 141
    .local v0, "description":Lorg/videolan/libvlc/MediaDiscoverer$Description;
    const-string v4, "MediaBrowser"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "starting "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lorg/videolan/libvlc/MediaDiscoverer$Description;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " discover ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lorg/videolan/libvlc/MediaDiscoverer$Description;->longName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v4, v0, Lorg/videolan/libvlc/MediaDiscoverer$Description;->name:Ljava/lang/String;

    invoke-direct {p0, v4}, Lorg/videolan/libvlc/util/MediaBrowser;->startMediaDiscoverer(Ljava/lang/String;)V

    .line 140
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public discoverNetworkShares(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-direct {p0}, Lorg/videolan/libvlc/util/MediaBrowser;->reset()V

    .line 152
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/util/MediaBrowser;->startMediaDiscoverer(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public getMediaAt(I)Lorg/videolan/libvlc/Media;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 214
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/videolan/libvlc/util/MediaBrowser;->getMediaCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 215
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 216
    :cond_1
    iget-object v1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mBrowserMediaList:Lorg/videolan/libvlc/MediaList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mBrowserMediaList:Lorg/videolan/libvlc/MediaList;

    invoke-virtual {v1, p1}, Lorg/videolan/libvlc/MediaList;->getMediaAt(I)Lorg/videolan/libvlc/Media;

    move-result-object v0

    .line 218
    .local v0, "media":Lorg/videolan/libvlc/Media;
    :goto_0
    invoke-virtual {v0}, Lorg/videolan/libvlc/Media;->retain()Z

    .line 219
    return-object v0

    .line 217
    .end local v0    # "media":Lorg/videolan/libvlc/Media;
    :cond_2
    iget-object v1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mDiscovererMediaArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/libvlc/Media;

    move-object v0, v1

    goto :goto_0
.end method

.method public getMediaCount()I
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mBrowserMediaList:Lorg/videolan/libvlc/MediaList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mBrowserMediaList:Lorg/videolan/libvlc/MediaList;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaList;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mDiscovererMediaArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 105
    invoke-direct {p0}, Lorg/videolan/libvlc/util/MediaBrowser;->reset()V

    .line 106
    iget-boolean v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mAlive:Z

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MediaBrowser released more than one time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mLibVlc:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->release()V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mAlive:Z

    .line 110
    return-void
.end method

.method public setIgnoreFileTypes(Ljava/lang/String;)V
    .locals 0
    .param p1, "list"    # Ljava/lang/String;

    .prologue
    .line 229
    iput-object p1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mIgnoreList:Ljava/lang/String;

    .line 230
    return-void
.end method
