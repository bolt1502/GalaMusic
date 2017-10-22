.class public Lorg/videolan/libvlc/LibVLC;
.super Lorg/videolan/libvlc/VLCObject;
.source "LibVLC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/LibVLC$Event;,
        Lorg/videolan/libvlc/LibVLC$OnNativeCrashListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/videolan/libvlc/VLCObject",
        "<",
        "Lorg/videolan/libvlc/LibVLC$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VLC/LibVLC"

.field private static sLoaded:Z

.field private static sOnNativeCrashListener:Lorg/videolan/libvlc/LibVLC$OnNativeCrashListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    sput-boolean v0, Lorg/videolan/libvlc/LibVLC;->sLoaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/videolan/libvlc/excption/VlcException;
        }
    .end annotation

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/videolan/libvlc/LibVLC;-><init>(Ljava/util/ArrayList;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/videolan/libvlc/excption/VlcException;
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lorg/videolan/libvlc/VLCObject;-><init>()V

    .line 50
    invoke-virtual {p0}, Lorg/videolan/libvlc/LibVLC;->loadLibraries()V

    .line 52
    const/4 v2, 0x1

    .local v2, "setAout":Z
    const/4 v3, 0x1

    .line 54
    .local v3, "setChroma":Z
    if-eqz p1, :cond_1

    .line 55
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_6

    .line 66
    :cond_1
    :goto_0
    if-nez v2, :cond_2

    if-eqz v3, :cond_5

    .line 67
    :cond_2
    if-nez p1, :cond_3

    .line 68
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .restart local p1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    if-eqz v2, :cond_4

    .line 70
    invoke-static {}, Lorg/videolan/libvlc/util/HWDecoderUtil;->getAudioOutputFromDevice()Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutput;

    move-result-object v0

    .line 71
    .local v0, "hwAout":Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutput;
    sget-object v4, Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutput;->OPENSLES:Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutput;

    if-ne v0, v4, :cond_9

    .line 72
    const-string v4, "--aout=opensles"

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .end local v0    # "hwAout":Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutput;
    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    .line 77
    const-string v4, "--androidwindow-chroma"

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    const-string v4, "RV32"

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-direct {p0, v4}, Lorg/videolan/libvlc/LibVLC;->nativeNew([Ljava/lang/String;)V

    .line 83
    return-void

    .line 55
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 56
    .local v1, "option":Ljava/lang/String;
    const-string v5, "--aout="

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 57
    const/4 v2, 0x0

    .line 58
    :cond_7
    const-string v5, "--androidwindow-chroma"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 59
    const/4 v3, 0x0

    .line 60
    :cond_8
    if-nez v2, :cond_0

    if-nez v3, :cond_0

    goto :goto_0

    .line 74
    .end local v1    # "option":Ljava/lang/String;
    .restart local v0    # "hwAout":Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutput;
    :cond_9
    const-string v4, "--aout=android_audiotrack"

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private native nativeNew([Ljava/lang/String;)V
.end method

.method private native nativeRelease()V
.end method

.method private native nativeSetUserAgent(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static onNativeCrash()V
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lorg/videolan/libvlc/LibVLC;->sOnNativeCrashListener:Lorg/videolan/libvlc/LibVLC$OnNativeCrashListener;

    if-eqz v0, :cond_0

    .line 130
    sget-object v0, Lorg/videolan/libvlc/LibVLC;->sOnNativeCrashListener:Lorg/videolan/libvlc/LibVLC$OnNativeCrashListener;

    invoke-interface {v0}, Lorg/videolan/libvlc/LibVLC$OnNativeCrashListener;->onNativeCrash()V

    .line 131
    :cond_0
    return-void
.end method

.method public static setOnNativeCrashListener(Lorg/videolan/libvlc/LibVLC$OnNativeCrashListener;)V
    .locals 0
    .param p0, "l"    # Lorg/videolan/libvlc/LibVLC$OnNativeCrashListener;

    .prologue
    .line 125
    sput-object p0, Lorg/videolan/libvlc/LibVLC;->sOnNativeCrashListener:Lorg/videolan/libvlc/LibVLC$OnNativeCrashListener;

    .line 126
    return-void
.end method


# virtual methods
.method public native changeset()Ljava/lang/String;
.end method

.method public native compiler()Ljava/lang/String;
.end method

.method public bridge synthetic isReleased()Z
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lorg/videolan/libvlc/VLCObject;->isReleased()Z

    move-result v0

    return v0
.end method

.method declared-synchronized loadLibraries()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/videolan/libvlc/excption/VlcException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x11

    const/16 v6, 0xd

    const/16 v5, 0xa

    .line 152
    monitor-enter p0

    :try_start_0
    sget-boolean v3, Lorg/videolan/libvlc/LibVLC;->sLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 207
    :goto_0
    monitor-exit p0

    return-void

    .line 154
    :cond_0
    const/4 v3, 0x1

    :try_start_1
    sput-boolean v3, Lorg/videolan/libvlc/LibVLC;->sLoaded:Z

    .line 156
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v3, v5, :cond_1

    .line 158
    :try_start_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xc

    if-gt v3, v4, :cond_2

    .line 159
    const-string v3, "anw.10"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    :goto_1
    :try_start_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v3, v5, :cond_5

    .line 174
    const-string v3, "iomx.10"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 191
    :cond_1
    :goto_2
    :try_start_4
    const-string v3, "compat.7"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 195
    :goto_3
    :try_start_5
    const-string v3, "vlc"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 196
    const-string v3, "vlcjni"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v2

    .line 198
    .local v2, "ule":Ljava/lang/UnsatisfiedLinkError;
    :try_start_6
    const-string v3, "VLC/LibVLC"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Can\'t load vlcjni library: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/System;->exit(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 152
    .end local v2    # "ule":Ljava/lang/UnsatisfiedLinkError;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 160
    :cond_2
    :try_start_7
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v3, v6, :cond_3

    .line 161
    const-string v3, "anw.13"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 168
    :catch_1
    move-exception v1

    .line 169
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_8
    const-string v3, "VLC/LibVLC"

    const-string v4, "anw library not loaded"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 162
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_3
    :try_start_9
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v3, v7, :cond_4

    .line 163
    const-string v3, "anw.14"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_1

    .line 167
    :cond_4
    const-string v3, "anw.21"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .line 175
    :cond_5
    :try_start_a
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v3, v6, :cond_6

    .line 176
    const-string v3, "iomx.13"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    .line 183
    :catch_2
    move-exception v1

    .line 185
    .restart local v1    # "t":Ljava/lang/Throwable;
    :try_start_b
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xf

    if-gt v3, v4, :cond_1

    .line 186
    const-string v3, "VLC/LibVLC"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to load the iomx library: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_2

    .line 177
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_6
    :try_start_c
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v3, v7, :cond_1

    .line 178
    const-string v3, "iomx.14"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_2

    .line 201
    :catch_3
    move-exception v0

    .line 202
    .local v0, "se":Ljava/lang/SecurityException;
    :try_start_d
    const-string v3, "VLC/LibVLC"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Encountered a security issue when loading vlcjni library: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance v3, Lorg/videolan/libvlc/excption/VlcException;

    const-string v4, "vlc init failed!"

    invoke-direct {v3, v4}, Lorg/videolan/libvlc/excption/VlcException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 192
    .end local v0    # "se":Ljava/lang/SecurityException;
    :catch_4
    move-exception v3

    goto/16 :goto_3
.end method

.method protected onEventNative(IJF)Lorg/videolan/libvlc/LibVLC$Event;
    .locals 1
    .param p1, "eventType"    # I
    .param p2, "arg1"    # J
    .param p4, "arg2"    # F

    .prologue
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onEventNative(IJF)Lorg/videolan/libvlc/VLCEvent;
    .locals 2

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/videolan/libvlc/LibVLC;->onEventNative(IJF)Lorg/videolan/libvlc/LibVLC$Event;

    move-result-object v0

    return-object v0
.end method

.method protected onReleaseNative()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Lorg/videolan/libvlc/LibVLC;->nativeRelease()V

    .line 118
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "http"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-direct {p0, p1, p2}, Lorg/videolan/libvlc/LibVLC;->nativeSetUserAgent(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public native version()Ljava/lang/String;
.end method
