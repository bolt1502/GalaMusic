.class Lorg/videolan/libvlc/util/MediaBrowser$2;
.super Ljava/lang/Object;
.source "MediaBrowser.java"

# interfaces
.implements Lorg/videolan/libvlc/MediaList$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/util/MediaBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/libvlc/util/MediaBrowser;


# direct methods
.method constructor <init>(Lorg/videolan/libvlc/util/MediaBrowser;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/libvlc/util/MediaBrowser$2;->this$0:Lorg/videolan/libvlc/util/MediaBrowser;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/videolan/libvlc/MediaList$Event;)V
    .locals 8
    .param p1, "event"    # Lorg/videolan/libvlc/MediaList$Event;

    .prologue
    const/4 v7, -0x1

    .line 255
    iget-object v4, p0, Lorg/videolan/libvlc/util/MediaBrowser$2;->this$0:Lorg/videolan/libvlc/util/MediaBrowser;

    # getter for: Lorg/videolan/libvlc/util/MediaBrowser;->mEventListener:Lorg/videolan/libvlc/util/MediaBrowser$EventListener;
    invoke-static {v4}, Lorg/videolan/libvlc/util/MediaBrowser;->access$0(Lorg/videolan/libvlc/util/MediaBrowser;)Lorg/videolan/libvlc/util/MediaBrowser$EventListener;

    move-result-object v4

    if-nez v4, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    move-object v3, p1

    .line 258
    .local v3, "mlEvent":Lorg/videolan/libvlc/MediaList$Event;
    const/4 v1, -0x1

    .line 263
    .local v1, "index":I
    iget v4, v3, Lorg/videolan/libvlc/MediaList$Event;->type:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 266
    :pswitch_1
    const/4 v0, 0x0

    .line 267
    .local v0, "found":Z
    iget-object v4, p0, Lorg/videolan/libvlc/util/MediaBrowser$2;->this$0:Lorg/videolan/libvlc/util/MediaBrowser;

    # getter for: Lorg/videolan/libvlc/util/MediaBrowser;->mDiscovererMediaArray:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/videolan/libvlc/util/MediaBrowser;->access$1(Lorg/videolan/libvlc/util/MediaBrowser;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 273
    :goto_1
    if-nez v0, :cond_3

    .line 274
    iget-object v4, p0, Lorg/videolan/libvlc/util/MediaBrowser$2;->this$0:Lorg/videolan/libvlc/util/MediaBrowser;

    # getter for: Lorg/videolan/libvlc/util/MediaBrowser;->mDiscovererMediaArray:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/videolan/libvlc/util/MediaBrowser;->access$1(Lorg/videolan/libvlc/util/MediaBrowser;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, v3, Lorg/videolan/libvlc/MediaList$Event;->media:Lorg/videolan/libvlc/Media;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v4, p0, Lorg/videolan/libvlc/util/MediaBrowser$2;->this$0:Lorg/videolan/libvlc/util/MediaBrowser;

    # getter for: Lorg/videolan/libvlc/util/MediaBrowser;->mDiscovererMediaArray:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/videolan/libvlc/util/MediaBrowser;->access$1(Lorg/videolan/libvlc/util/MediaBrowser;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 276
    :cond_3
    if-eq v1, v7, :cond_0

    .line 277
    iget-object v4, p0, Lorg/videolan/libvlc/util/MediaBrowser$2;->this$0:Lorg/videolan/libvlc/util/MediaBrowser;

    # getter for: Lorg/videolan/libvlc/util/MediaBrowser;->mEventListener:Lorg/videolan/libvlc/util/MediaBrowser$EventListener;
    invoke-static {v4}, Lorg/videolan/libvlc/util/MediaBrowser;->access$0(Lorg/videolan/libvlc/util/MediaBrowser;)Lorg/videolan/libvlc/util/MediaBrowser$EventListener;

    move-result-object v4

    iget-object v5, v3, Lorg/videolan/libvlc/MediaList$Event;->media:Lorg/videolan/libvlc/Media;

    invoke-interface {v4, v1, v5}, Lorg/videolan/libvlc/util/MediaBrowser$EventListener;->onMediaAdded(ILorg/videolan/libvlc/Media;)V

    goto :goto_0

    .line 267
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/videolan/libvlc/Media;

    .line 268
    .local v2, "media":Lorg/videolan/libvlc/Media;
    invoke-virtual {v2}, Lorg/videolan/libvlc/Media;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lorg/videolan/libvlc/MediaList$Event;->media:Lorg/videolan/libvlc/Media;

    invoke-virtual {v6}, Lorg/videolan/libvlc/Media;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 269
    const/4 v0, 0x1

    .line 270
    goto :goto_1

    .line 280
    .end local v0    # "found":Z
    .end local v2    # "media":Lorg/videolan/libvlc/Media;
    :pswitch_2
    iget-object v4, p0, Lorg/videolan/libvlc/util/MediaBrowser$2;->this$0:Lorg/videolan/libvlc/util/MediaBrowser;

    # getter for: Lorg/videolan/libvlc/util/MediaBrowser;->mDiscovererMediaArray:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/videolan/libvlc/util/MediaBrowser;->access$1(Lorg/videolan/libvlc/util/MediaBrowser;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, v3, Lorg/videolan/libvlc/MediaList$Event;->media:Lorg/videolan/libvlc/Media;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 281
    if-eq v1, v7, :cond_5

    .line 282
    iget-object v4, p0, Lorg/videolan/libvlc/util/MediaBrowser$2;->this$0:Lorg/videolan/libvlc/util/MediaBrowser;

    # getter for: Lorg/videolan/libvlc/util/MediaBrowser;->mDiscovererMediaArray:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/videolan/libvlc/util/MediaBrowser;->access$1(Lorg/videolan/libvlc/util/MediaBrowser;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 283
    :cond_5
    if-eq v1, v7, :cond_0

    .line 284
    iget-object v4, p0, Lorg/videolan/libvlc/util/MediaBrowser$2;->this$0:Lorg/videolan/libvlc/util/MediaBrowser;

    # getter for: Lorg/videolan/libvlc/util/MediaBrowser;->mEventListener:Lorg/videolan/libvlc/util/MediaBrowser$EventListener;
    invoke-static {v4}, Lorg/videolan/libvlc/util/MediaBrowser;->access$0(Lorg/videolan/libvlc/util/MediaBrowser;)Lorg/videolan/libvlc/util/MediaBrowser$EventListener;

    move-result-object v4

    iget-object v5, v3, Lorg/videolan/libvlc/MediaList$Event;->media:Lorg/videolan/libvlc/Media;

    invoke-interface {v4, v1, v5}, Lorg/videolan/libvlc/util/MediaBrowser$EventListener;->onMediaRemoved(ILorg/videolan/libvlc/Media;)V

    goto/16 :goto_0

    .line 287
    :pswitch_3
    iget-object v4, p0, Lorg/videolan/libvlc/util/MediaBrowser$2;->this$0:Lorg/videolan/libvlc/util/MediaBrowser;

    # getter for: Lorg/videolan/libvlc/util/MediaBrowser;->mEventListener:Lorg/videolan/libvlc/util/MediaBrowser$EventListener;
    invoke-static {v4}, Lorg/videolan/libvlc/util/MediaBrowser;->access$0(Lorg/videolan/libvlc/util/MediaBrowser;)Lorg/videolan/libvlc/util/MediaBrowser$EventListener;

    move-result-object v4

    invoke-interface {v4}, Lorg/videolan/libvlc/util/MediaBrowser$EventListener;->onBrowseEnd()V

    goto/16 :goto_0

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x200
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic onEvent(Lorg/videolan/libvlc/VLCEvent;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/videolan/libvlc/MediaList$Event;

    invoke-virtual {p0, p1}, Lorg/videolan/libvlc/util/MediaBrowser$2;->onEvent(Lorg/videolan/libvlc/MediaList$Event;)V

    return-void
.end method
