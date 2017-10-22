.class public Lorg/videolan/libvlc/MediaDiscoverer;
.super Lorg/videolan/libvlc/VLCObject;
.source "MediaDiscoverer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/MediaDiscoverer$Description;,
        Lorg/videolan/libvlc/MediaDiscoverer$Event;,
        Lorg/videolan/libvlc/MediaDiscoverer$EventListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/videolan/libvlc/VLCObject",
        "<",
        "Lorg/videolan/libvlc/MediaDiscoverer$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LibVLC/MediaDiscoverer"


# instance fields
.field private mMediaList:Lorg/videolan/libvlc/MediaList;


# direct methods
.method public constructor <init>(Lorg/videolan/libvlc/LibVLC;Ljava/lang/String;)V
    .locals 1
    .param p1, "libVLC"    # Lorg/videolan/libvlc/LibVLC;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/videolan/libvlc/VLCObject;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/videolan/libvlc/MediaDiscoverer;->mMediaList:Lorg/videolan/libvlc/MediaList;

    .line 77
    invoke-direct {p0, p1, p2}, Lorg/videolan/libvlc/MediaDiscoverer;->nativeNew(Lorg/videolan/libvlc/LibVLC;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method private static createDescriptionFromNative(Ljava/lang/String;Ljava/lang/String;I)Lorg/videolan/libvlc/MediaDiscoverer$Description;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "longName"    # Ljava/lang/String;
    .param p2, "category"    # I

    .prologue
    .line 63
    new-instance v0, Lorg/videolan/libvlc/MediaDiscoverer$Description;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/videolan/libvlc/MediaDiscoverer$Description;-><init>(Ljava/lang/String;Ljava/lang/String;ILorg/videolan/libvlc/MediaDiscoverer$Description;)V

    return-object v0
.end method

.method public static list(Lorg/videolan/libvlc/LibVLC;I)[Lorg/videolan/libvlc/MediaDiscoverer$Description;
    .locals 1
    .param p0, "libVLC"    # Lorg/videolan/libvlc/LibVLC;
    .param p1, "category"    # I

    .prologue
    .line 148
    invoke-static {p0, p1}, Lorg/videolan/libvlc/MediaDiscoverer;->nativeList(Lorg/videolan/libvlc/LibVLC;I)[Lorg/videolan/libvlc/MediaDiscoverer$Description;

    move-result-object v0

    return-object v0
.end method

.method private static native nativeList(Lorg/videolan/libvlc/LibVLC;I)[Lorg/videolan/libvlc/MediaDiscoverer$Description;
.end method

.method private native nativeNew(Lorg/videolan/libvlc/LibVLC;Ljava/lang/String;)V
.end method

.method private native nativeRelease()V
.end method

.method private native nativeStart()Z
.end method

.method private native nativeStop()V
.end method


# virtual methods
.method public getMediaList()Lorg/videolan/libvlc/MediaList;
    .locals 2

    .prologue
    .line 122
    monitor-enter p0

    .line 123
    :try_start_0
    iget-object v1, p0, Lorg/videolan/libvlc/MediaDiscoverer;->mMediaList:Lorg/videolan/libvlc/MediaList;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lorg/videolan/libvlc/MediaDiscoverer;->mMediaList:Lorg/videolan/libvlc/MediaList;

    invoke-virtual {v1}, Lorg/videolan/libvlc/MediaList;->retain()Z

    .line 125
    iget-object v1, p0, Lorg/videolan/libvlc/MediaDiscoverer;->mMediaList:Lorg/videolan/libvlc/MediaList;

    monitor-exit p0

    .line 132
    :goto_0
    return-object v1

    .line 122
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 128
    new-instance v0, Lorg/videolan/libvlc/MediaList;

    invoke-direct {v0, p0}, Lorg/videolan/libvlc/MediaList;-><init>(Lorg/videolan/libvlc/MediaDiscoverer;)V

    .line 129
    .local v0, "mediaList":Lorg/videolan/libvlc/MediaList;
    monitor-enter p0

    .line 130
    :try_start_1
    iput-object v0, p0, Lorg/videolan/libvlc/MediaDiscoverer;->mMediaList:Lorg/videolan/libvlc/MediaList;

    .line 131
    iget-object v1, p0, Lorg/videolan/libvlc/MediaDiscoverer;->mMediaList:Lorg/videolan/libvlc/MediaList;

    invoke-virtual {v1}, Lorg/videolan/libvlc/MediaList;->retain()Z

    .line 132
    iget-object v1, p0, Lorg/videolan/libvlc/MediaDiscoverer;->mMediaList:Lorg/videolan/libvlc/MediaList;

    monitor-exit p0

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 122
    .end local v0    # "mediaList":Lorg/videolan/libvlc/MediaList;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public bridge synthetic isReleased()Z
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lorg/videolan/libvlc/VLCObject;->isReleased()Z

    move-result v0

    return v0
.end method

.method protected onEventNative(IJF)Lorg/videolan/libvlc/MediaDiscoverer$Event;
    .locals 1
    .param p1, "eventType"    # I
    .param p2, "arg1"    # J
    .param p4, "arg2"    # F

    .prologue
    .line 107
    packed-switch p1, :pswitch_data_0

    .line 112
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 110
    :pswitch_0
    new-instance v0, Lorg/videolan/libvlc/MediaDiscoverer$Event;

    invoke-direct {v0, p1}, Lorg/videolan/libvlc/MediaDiscoverer$Event;-><init>(I)V

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x500
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onEventNative(IJF)Lorg/videolan/libvlc/VLCEvent;
    .locals 2

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/videolan/libvlc/MediaDiscoverer;->onEventNative(IJF)Lorg/videolan/libvlc/MediaDiscoverer$Event;

    move-result-object v0

    return-object v0
.end method

.method protected onReleaseNative()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/videolan/libvlc/MediaDiscoverer;->mMediaList:Lorg/videolan/libvlc/MediaList;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lorg/videolan/libvlc/MediaDiscoverer;->mMediaList:Lorg/videolan/libvlc/MediaList;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaList;->release()V

    .line 140
    :cond_0
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaDiscoverer;->nativeRelease()V

    .line 141
    return-void
.end method

.method public setEventListener(Lorg/videolan/libvlc/MediaDiscoverer$EventListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/videolan/libvlc/MediaDiscoverer$EventListener;

    .prologue
    .line 102
    invoke-super {p0, p1}, Lorg/videolan/libvlc/VLCObject;->setEventListener(Lorg/videolan/libvlc/VLCEvent$Listener;)V

    .line 103
    return-void
.end method

.method public start()Z
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lorg/videolan/libvlc/MediaDiscoverer;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MediaDiscoverer is released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaDiscoverer;->nativeStart()Z

    move-result v0

    return v0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 96
    invoke-virtual {p0}, Lorg/videolan/libvlc/MediaDiscoverer;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MediaDiscoverer is released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaDiscoverer;->nativeStop()V

    .line 99
    return-void
.end method
