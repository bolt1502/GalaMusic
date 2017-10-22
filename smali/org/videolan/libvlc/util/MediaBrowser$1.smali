.class Lorg/videolan/libvlc/util/MediaBrowser$1;
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
    iput-object p1, p0, Lorg/videolan/libvlc/util/MediaBrowser$1;->this$0:Lorg/videolan/libvlc/util/MediaBrowser;

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/videolan/libvlc/MediaList$Event;)V
    .locals 4
    .param p1, "event"    # Lorg/videolan/libvlc/MediaList$Event;

    .prologue
    .line 235
    iget-object v1, p0, Lorg/videolan/libvlc/util/MediaBrowser$1;->this$0:Lorg/videolan/libvlc/util/MediaBrowser;

    # getter for: Lorg/videolan/libvlc/util/MediaBrowser;->mEventListener:Lorg/videolan/libvlc/util/MediaBrowser$EventListener;
    invoke-static {v1}, Lorg/videolan/libvlc/util/MediaBrowser;->access$0(Lorg/videolan/libvlc/util/MediaBrowser;)Lorg/videolan/libvlc/util/MediaBrowser$EventListener;

    move-result-object v1

    if-nez v1, :cond_0

    .line 249
    :goto_0
    return-void

    .line 237
    :cond_0
    move-object v0, p1

    .line 239
    .local v0, "mlEvent":Lorg/videolan/libvlc/MediaList$Event;
    iget v1, v0, Lorg/videolan/libvlc/MediaList$Event;->type:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 241
    :pswitch_1
    iget-object v1, p0, Lorg/videolan/libvlc/util/MediaBrowser$1;->this$0:Lorg/videolan/libvlc/util/MediaBrowser;

    # getter for: Lorg/videolan/libvlc/util/MediaBrowser;->mEventListener:Lorg/videolan/libvlc/util/MediaBrowser$EventListener;
    invoke-static {v1}, Lorg/videolan/libvlc/util/MediaBrowser;->access$0(Lorg/videolan/libvlc/util/MediaBrowser;)Lorg/videolan/libvlc/util/MediaBrowser$EventListener;

    move-result-object v1

    iget v2, v0, Lorg/videolan/libvlc/MediaList$Event;->index:I

    iget-object v3, v0, Lorg/videolan/libvlc/MediaList$Event;->media:Lorg/videolan/libvlc/Media;

    invoke-interface {v1, v2, v3}, Lorg/videolan/libvlc/util/MediaBrowser$EventListener;->onMediaAdded(ILorg/videolan/libvlc/Media;)V

    goto :goto_0

    .line 244
    :pswitch_2
    iget-object v1, p0, Lorg/videolan/libvlc/util/MediaBrowser$1;->this$0:Lorg/videolan/libvlc/util/MediaBrowser;

    # getter for: Lorg/videolan/libvlc/util/MediaBrowser;->mEventListener:Lorg/videolan/libvlc/util/MediaBrowser$EventListener;
    invoke-static {v1}, Lorg/videolan/libvlc/util/MediaBrowser;->access$0(Lorg/videolan/libvlc/util/MediaBrowser;)Lorg/videolan/libvlc/util/MediaBrowser$EventListener;

    move-result-object v1

    iget v2, v0, Lorg/videolan/libvlc/MediaList$Event;->index:I

    iget-object v3, v0, Lorg/videolan/libvlc/MediaList$Event;->media:Lorg/videolan/libvlc/Media;

    invoke-interface {v1, v2, v3}, Lorg/videolan/libvlc/util/MediaBrowser$EventListener;->onMediaRemoved(ILorg/videolan/libvlc/Media;)V

    goto :goto_0

    .line 247
    :pswitch_3
    iget-object v1, p0, Lorg/videolan/libvlc/util/MediaBrowser$1;->this$0:Lorg/videolan/libvlc/util/MediaBrowser;

    # getter for: Lorg/videolan/libvlc/util/MediaBrowser;->mEventListener:Lorg/videolan/libvlc/util/MediaBrowser$EventListener;
    invoke-static {v1}, Lorg/videolan/libvlc/util/MediaBrowser;->access$0(Lorg/videolan/libvlc/util/MediaBrowser;)Lorg/videolan/libvlc/util/MediaBrowser$EventListener;

    move-result-object v1

    invoke-interface {v1}, Lorg/videolan/libvlc/util/MediaBrowser$EventListener;->onBrowseEnd()V

    goto :goto_0

    .line 239
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

    invoke-virtual {p0, p1}, Lorg/videolan/libvlc/util/MediaBrowser$1;->onEvent(Lorg/videolan/libvlc/MediaList$Event;)V

    return-void
.end method
