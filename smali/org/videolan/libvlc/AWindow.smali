.class public Lorg/videolan/libvlc/AWindow;
.super Ljava/lang/Object;
.source "AWindow.java"

# interfaces
.implements Lorg/videolan/libvlc/IVLCVout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;,
        Lorg/videolan/libvlc/AWindow$SurfaceCallback;,
        Lorg/videolan/libvlc/AWindow$SurfaceHelper;
    }
.end annotation


# static fields
.field private static final ID_MAX:I = 0x2

.field private static final ID_SUBTITLES:I = 0x1

.field private static final ID_VIDEO:I = 0x0

.field private static final SURFACE_STATE_ATTACHED:I = 0x1

.field private static final SURFACE_STATE_INIT:I = 0x0

.field private static final SURFACE_STATE_READY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AWindow"


# instance fields
.field private final mAWindowNativeHandler:Lorg/videolan/libvlc/AWindowNativeHandler;

.field private final mBuffersGeometryCond:Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;

.field private mCallbackNativeHandle:J

.field private final mHandler:Landroid/os/Handler;

.field private mIVLCVoutCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/videolan/libvlc/IVLCVout$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mMouseAction:I

.field private mMouseButton:I

.field private mMouseX:I

.field private mMouseY:I

.field private final mNativeLock:Ljava/lang/Object;

.field private final mSurfaceCallback:Lorg/videolan/libvlc/AWindow$SurfaceCallback;

.field private final mSurfaceHelpers:[Lorg/videolan/libvlc/AWindow$SurfaceHelper;

.field private final mSurfaces:[Landroid/view/Surface;

.field private final mSurfacesState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWindowHeight:I

.field private mWindowWidth:I


# direct methods
.method public constructor <init>(Lorg/videolan/libvlc/AWindow$SurfaceCallback;)V
    .locals 7
    .param p1, "surfaceCallback"    # Lorg/videolan/libvlc/AWindow$SurfaceCallback;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/videolan/libvlc/AWindow;->mSurfacesState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/videolan/libvlc/AWindow;->mIVLCVoutCallbacks:Ljava/util/ArrayList;

    .line 199
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/videolan/libvlc/AWindow;->mHandler:Landroid/os/Handler;

    .line 200
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/videolan/libvlc/AWindow;->mNativeLock:Ljava/lang/Object;

    .line 203
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/videolan/libvlc/AWindow;->mCallbackNativeHandle:J

    .line 204
    iput v2, p0, Lorg/videolan/libvlc/AWindow;->mMouseAction:I

    iput v2, p0, Lorg/videolan/libvlc/AWindow;->mMouseButton:I

    iput v2, p0, Lorg/videolan/libvlc/AWindow;->mMouseX:I

    iput v2, p0, Lorg/videolan/libvlc/AWindow;->mMouseY:I

    .line 205
    iput v2, p0, Lorg/videolan/libvlc/AWindow;->mWindowWidth:I

    iput v2, p0, Lorg/videolan/libvlc/AWindow;->mWindowHeight:I

    .line 422
    new-instance v0, Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;

    invoke-direct {v0, v3}, Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;-><init>(Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;)V

    iput-object v0, p0, Lorg/videolan/libvlc/AWindow;->mBuffersGeometryCond:Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;

    .line 440
    new-instance v0, Lorg/videolan/libvlc/AWindow$1;

    invoke-direct {v0, p0}, Lorg/videolan/libvlc/AWindow$1;-><init>(Lorg/videolan/libvlc/AWindow;)V

    iput-object v0, p0, Lorg/videolan/libvlc/AWindow;->mAWindowNativeHandler:Lorg/videolan/libvlc/AWindowNativeHandler;

    .line 208
    iput-object p1, p0, Lorg/videolan/libvlc/AWindow;->mSurfaceCallback:Lorg/videolan/libvlc/AWindow$SurfaceCallback;

    .line 209
    new-array v0, v6, [Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    iput-object v0, p0, Lorg/videolan/libvlc/AWindow;->mSurfaceHelpers:[Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    .line 210
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow;->mSurfaceHelpers:[Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    aput-object v3, v0, v4

    .line 211
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow;->mSurfaceHelpers:[Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    aput-object v3, v0, v5

    .line 212
    new-array v0, v6, [Landroid/view/Surface;

    iput-object v0, p0, Lorg/videolan/libvlc/AWindow;->mSurfaces:[Landroid/view/Surface;

    .line 213
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow;->mSurfaces:[Landroid/view/Surface;

    aput-object v3, v0, v4

    .line 214
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow;->mSurfaces:[Landroid/view/Surface;

    aput-object v3, v0, v5

    .line 215
    return-void
.end method

.method static synthetic access$0(Lorg/videolan/libvlc/AWindow;I)Landroid/view/Surface;
    .locals 1

    .prologue
    .line 412
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/AWindow;->getNativeSurface(I)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lorg/videolan/libvlc/AWindow;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow;->mNativeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$10(Lorg/videolan/libvlc/AWindow;I)V
    .locals 0

    .prologue
    .line 204
    iput p1, p0, Lorg/videolan/libvlc/AWindow;->mMouseY:I

    return-void
.end method

.method static synthetic access$11(Lorg/videolan/libvlc/AWindow;I)V
    .locals 0

    .prologue
    .line 204
    iput p1, p0, Lorg/videolan/libvlc/AWindow;->mMouseX:I

    return-void
.end method

.method static synthetic access$12(Lorg/videolan/libvlc/AWindow;I)V
    .locals 0

    .prologue
    .line 204
    iput p1, p0, Lorg/videolan/libvlc/AWindow;->mMouseButton:I

    return-void
.end method

.method static synthetic access$13(Lorg/videolan/libvlc/AWindow;I)V
    .locals 0

    .prologue
    .line 204
    iput p1, p0, Lorg/videolan/libvlc/AWindow;->mMouseAction:I

    return-void
.end method

.method static synthetic access$14(Lorg/videolan/libvlc/AWindow;I)V
    .locals 0

    .prologue
    .line 205
    iput p1, p0, Lorg/videolan/libvlc/AWindow;->mWindowHeight:I

    return-void
.end method

.method static synthetic access$15(Lorg/videolan/libvlc/AWindow;I)V
    .locals 0

    .prologue
    .line 205
    iput p1, p0, Lorg/videolan/libvlc/AWindow;->mWindowWidth:I

    return-void
.end method

.method static synthetic access$16(Lorg/videolan/libvlc/AWindow;)Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow;->mBuffersGeometryCond:Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;

    return-object v0
.end method

.method static synthetic access$17(Lorg/videolan/libvlc/AWindow;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$18(Lorg/videolan/libvlc/AWindow;)[Lorg/videolan/libvlc/AWindow$SurfaceHelper;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow;->mSurfaceHelpers:[Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    return-object v0
.end method

.method static synthetic access$19(Lorg/videolan/libvlc/AWindow;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow;->mIVLCVoutCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lorg/videolan/libvlc/AWindow;)J
    .locals 2

    .prologue
    .line 203
    iget-wide v0, p0, Lorg/videolan/libvlc/AWindow;->mCallbackNativeHandle:J

    return-wide v0
.end method

.method static synthetic access$20(Lorg/videolan/libvlc/AWindow;)V
    .locals 0

    .prologue
    .line 372
    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow;->onSurfaceDestroyed()V

    return-void
.end method

.method static synthetic access$21(Lorg/videolan/libvlc/AWindow;ILandroid/view/Surface;)V
    .locals 0

    .prologue
    .line 406
    invoke-direct {p0, p1, p2}, Lorg/videolan/libvlc/AWindow;->setNativeSurface(ILandroid/view/Surface;)V

    return-void
.end method

.method static synthetic access$22(Lorg/videolan/libvlc/AWindow;)V
    .locals 0

    .prologue
    .line 353
    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow;->onSurfaceCreated()V

    return-void
.end method

.method static synthetic access$3(Lorg/videolan/libvlc/AWindow;J)V
    .locals 1

    .prologue
    .line 203
    iput-wide p1, p0, Lorg/videolan/libvlc/AWindow;->mCallbackNativeHandle:J

    return-void
.end method

.method static synthetic access$4(Lorg/videolan/libvlc/AWindow;)I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lorg/videolan/libvlc/AWindow;->mMouseAction:I

    return v0
.end method

.method static synthetic access$5(Lorg/videolan/libvlc/AWindow;)I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lorg/videolan/libvlc/AWindow;->mMouseButton:I

    return v0
.end method

.method static synthetic access$6(Lorg/videolan/libvlc/AWindow;)I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lorg/videolan/libvlc/AWindow;->mMouseX:I

    return v0
.end method

.method static synthetic access$7(Lorg/videolan/libvlc/AWindow;)I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lorg/videolan/libvlc/AWindow;->mMouseY:I

    return v0
.end method

.method static synthetic access$8(Lorg/videolan/libvlc/AWindow;)I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lorg/videolan/libvlc/AWindow;->mWindowWidth:I

    return v0
.end method

.method static synthetic access$9(Lorg/videolan/libvlc/AWindow;)I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lorg/videolan/libvlc/AWindow;->mWindowHeight:I

    return v0
.end method

.method private ensureInitState()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 218
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow;->mSurfacesState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t set view when already attached. Current state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    iget-object v2, p0, Lorg/videolan/libvlc/AWindow;->mSurfacesState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 221
    const-string v2, "mSurfaces[ID_VIDEO]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/videolan/libvlc/AWindow;->mSurfaceHelpers:[Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/videolan/libvlc/AWindow;->mSurfaces:[Landroid/view/Surface;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 222
    const-string v2, "mSurfaces[ID_SUBTITLES]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/videolan/libvlc/AWindow;->mSurfaceHelpers:[Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/videolan/libvlc/AWindow;->mSurfaces:[Landroid/view/Surface;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_0
    return-void
.end method

.method private getNativeSurface(I)Landroid/view/Surface;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 413
    iget-object v1, p0, Lorg/videolan/libvlc/AWindow;->mNativeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 414
    :try_start_0
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow;->mSurfaces:[Landroid/view/Surface;

    aget-object v0, v0, p1

    monitor-exit v1

    return-object v0

    .line 413
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onSurfaceCreated()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 354
    iget-object v3, p0, Lorg/videolan/libvlc/AWindow;->mSurfacesState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-eq v3, v5, :cond_0

    .line 355
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "invalid state"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 357
    :cond_0
    iget-object v3, p0, Lorg/videolan/libvlc/AWindow;->mSurfaceHelpers:[Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    const/4 v4, 0x0

    aget-object v2, v3, v4

    .line 358
    .local v2, "videoHelper":Lorg/videolan/libvlc/AWindow$SurfaceHelper;
    iget-object v3, p0, Lorg/videolan/libvlc/AWindow;->mSurfaceHelpers:[Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    aget-object v1, v3, v5

    .line 359
    .local v1, "subtitlesHelper":Lorg/videolan/libvlc/AWindow$SurfaceHelper;
    if-nez v2, :cond_1

    .line 360
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "videoHelper shouldn\'t be null here"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 362
    :cond_1
    invoke-virtual {v2}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->isReady()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->isReady()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 363
    :cond_2
    iget-object v3, p0, Lorg/videolan/libvlc/AWindow;->mSurfacesState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 364
    iget-object v3, p0, Lorg/videolan/libvlc/AWindow;->mIVLCVoutCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 366
    iget-object v3, p0, Lorg/videolan/libvlc/AWindow;->mSurfaceCallback:Lorg/videolan/libvlc/AWindow$SurfaceCallback;

    if-eqz v3, :cond_3

    .line 367
    iget-object v3, p0, Lorg/videolan/libvlc/AWindow;->mSurfaceCallback:Lorg/videolan/libvlc/AWindow$SurfaceCallback;

    invoke-interface {v3, p0}, Lorg/videolan/libvlc/AWindow$SurfaceCallback;->onSurfacesCreated(Lorg/videolan/libvlc/AWindow;)V

    .line 369
    :cond_3
    return-void

    .line 364
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/libvlc/IVLCVout$Callback;

    .line 365
    .local v0, "cb":Lorg/videolan/libvlc/IVLCVout$Callback;
    invoke-interface {v0, p0}, Lorg/videolan/libvlc/IVLCVout$Callback;->onSurfacesCreated(Lorg/videolan/libvlc/IVLCVout;)V

    goto :goto_0
.end method

.method private onSurfaceDestroyed()V
    .locals 0

    .prologue
    .line 373
    invoke-virtual {p0}, Lorg/videolan/libvlc/AWindow;->detachViews()V

    .line 374
    return-void
.end method

.method private setNativeSurface(ILandroid/view/Surface;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "surface"    # Landroid/view/Surface;

    .prologue
    .line 407
    iget-object v1, p0, Lorg/videolan/libvlc/AWindow;->mNativeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 408
    :try_start_0
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow;->mSurfaces:[Landroid/view/Surface;

    aput-object p2, v0, p1

    .line 407
    monitor-exit v1

    .line 410
    return-void

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setSurface(ILandroid/view/Surface;Landroid/view/SurfaceHolder;)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 250
    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow;->ensureInitState()V

    .line 251
    invoke-virtual {p2}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    .line 252
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "surface is not attached and holder is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow;->mSurfaceHelpers:[Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    aget-object v6, v0, p1

    .line 254
    .local v6, "surfaceHelper":Lorg/videolan/libvlc/AWindow$SurfaceHelper;
    if-eqz v6, :cond_1

    .line 255
    invoke-virtual {v6}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->release()V

    .line 257
    :cond_1
    iget-object v7, p0, Lorg/videolan/libvlc/AWindow;->mSurfaceHelpers:[Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    new-instance v0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;-><init>(Lorg/videolan/libvlc/AWindow;ILandroid/view/Surface;Landroid/view/SurfaceHolder;Lorg/videolan/libvlc/AWindow$SurfaceHelper;)V

    aput-object v0, v7, p1

    .line 258
    return-void
.end method

.method private setView(ILandroid/view/SurfaceView;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "view"    # Landroid/view/SurfaceView;

    .prologue
    .line 226
    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow;->ensureInitState()V

    .line 227
    if-nez p2, :cond_0

    .line 228
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "view is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 229
    :cond_0
    iget-object v1, p0, Lorg/videolan/libvlc/AWindow;->mSurfaceHelpers:[Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    aget-object v0, v1, p1

    .line 230
    .local v0, "surfaceHelper":Lorg/videolan/libvlc/AWindow$SurfaceHelper;
    if-eqz v0, :cond_1

    .line 231
    invoke-virtual {v0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->release()V

    .line 233
    :cond_1
    iget-object v1, p0, Lorg/videolan/libvlc/AWindow;->mSurfaceHelpers:[Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    new-instance v2, Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, p2, v3}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;-><init>(Lorg/videolan/libvlc/AWindow;ILandroid/view/SurfaceView;Lorg/videolan/libvlc/AWindow$SurfaceHelper;)V

    aput-object v2, v1, p1

    .line 234
    return-void
.end method

.method private setView(ILandroid/view/TextureView;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "view"    # Landroid/view/TextureView;

    .prologue
    .line 237
    invoke-static {}, Lorg/videolan/libvlc/util/AndroidUtil;->isICSOrLater()Z

    move-result v1

    if-nez v1, :cond_0

    .line 238
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "TextureView not implemented in this android version"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 239
    :cond_0
    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow;->ensureInitState()V

    .line 240
    if-nez p2, :cond_1

    .line 241
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "view is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 242
    :cond_1
    iget-object v1, p0, Lorg/videolan/libvlc/AWindow;->mSurfaceHelpers:[Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    aget-object v0, v1, p1

    .line 243
    .local v0, "surfaceHelper":Lorg/videolan/libvlc/AWindow$SurfaceHelper;
    if-eqz v0, :cond_2

    .line 244
    invoke-virtual {v0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->release()V

    .line 246
    :cond_2
    iget-object v1, p0, Lorg/videolan/libvlc/AWindow;->mSurfaceHelpers:[Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    new-instance v2, Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, p2, v3}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;-><init>(Lorg/videolan/libvlc/AWindow;ILandroid/view/TextureView;Lorg/videolan/libvlc/AWindow$SurfaceHelper;)V

    aput-object v2, v1, p1

    .line 247
    return-void
.end method


# virtual methods
.method public addCallback(Lorg/videolan/libvlc/IVLCVout$Callback;)V
    .locals 1
    .param p1, "callback"    # Lorg/videolan/libvlc/IVLCVout$Callback;

    .prologue
    .line 426
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow;->mIVLCVoutCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 427
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow;->mIVLCVoutCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    :cond_0
    return-void
.end method

.method protected areSurfacesWaiting()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 377
    iget-object v1, p0, Lorg/videolan/libvlc/AWindow;->mSurfacesState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public areViewsAttached()Z
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow;->mSurfacesState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public attachViews()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 309
    iget-object v2, p0, Lorg/videolan/libvlc/AWindow;->mSurfacesState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/videolan/libvlc/AWindow;->mSurfaceHelpers:[Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    aget-object v2, v2, v3

    if-nez v2, :cond_1

    .line 310
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "already attached or video view not configured"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 311
    :cond_1
    iget-object v2, p0, Lorg/videolan/libvlc/AWindow;->mSurfacesState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 312
    iget-object v3, p0, Lorg/videolan/libvlc/AWindow;->mBuffersGeometryCond:Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;

    monitor-enter v3

    .line 313
    :try_start_0
    iget-object v2, p0, Lorg/videolan/libvlc/AWindow;->mBuffersGeometryCond:Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;->access$3(Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;Z)V

    .line 314
    iget-object v2, p0, Lorg/videolan/libvlc/AWindow;->mBuffersGeometryCond:Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;->access$4(Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;Z)V

    .line 312
    monitor-exit v3

    .line 316
    const/4 v0, 0x0

    .local v0, "id":I
    :goto_0
    const/4 v2, 0x2

    if-lt v0, v2, :cond_2

    .line 321
    return-void

    .line 312
    .end local v0    # "id":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 317
    .restart local v0    # "id":I
    :cond_2
    iget-object v2, p0, Lorg/videolan/libvlc/AWindow;->mSurfaceHelpers:[Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    aget-object v1, v2, v0

    .line 318
    .local v1, "surfaceHelper":Lorg/videolan/libvlc/AWindow$SurfaceHelper;
    if-eqz v1, :cond_3

    .line 319
    invoke-virtual {v1}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->attach()V

    .line 316
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public detachViews()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 326
    iget-object v3, p0, Lorg/videolan/libvlc/AWindow;->mSurfacesState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-nez v3, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    iget-object v3, p0, Lorg/videolan/libvlc/AWindow;->mSurfacesState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 329
    iget-object v3, p0, Lorg/videolan/libvlc/AWindow;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 330
    iget-object v4, p0, Lorg/videolan/libvlc/AWindow;->mBuffersGeometryCond:Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;

    monitor-enter v4

    .line 331
    :try_start_0
    iget-object v3, p0, Lorg/videolan/libvlc/AWindow;->mBuffersGeometryCond:Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;->access$4(Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;Z)V

    .line 332
    iget-object v3, p0, Lorg/videolan/libvlc/AWindow;->mBuffersGeometryCond:Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 330
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    const/4 v1, 0x0

    .local v1, "id":I
    :goto_1
    const/4 v3, 0x2

    if-lt v1, v3, :cond_2

    .line 340
    iget-object v3, p0, Lorg/videolan/libvlc/AWindow;->mIVLCVoutCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 342
    iget-object v3, p0, Lorg/videolan/libvlc/AWindow;->mSurfaceCallback:Lorg/videolan/libvlc/AWindow$SurfaceCallback;

    if-eqz v3, :cond_0

    .line 343
    iget-object v3, p0, Lorg/videolan/libvlc/AWindow;->mSurfaceCallback:Lorg/videolan/libvlc/AWindow$SurfaceCallback;

    invoke-interface {v3, p0}, Lorg/videolan/libvlc/AWindow$SurfaceCallback;->onSurfacesDestroyed(Lorg/videolan/libvlc/AWindow;)V

    goto :goto_0

    .line 330
    .end local v1    # "id":I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 335
    .restart local v1    # "id":I
    :cond_2
    iget-object v3, p0, Lorg/videolan/libvlc/AWindow;->mSurfaceHelpers:[Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    aget-object v2, v3, v1

    .line 336
    .local v2, "surfaceHelper":Lorg/videolan/libvlc/AWindow$SurfaceHelper;
    if-eqz v2, :cond_3

    .line 337
    invoke-virtual {v2}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->release()V

    .line 338
    :cond_3
    iget-object v3, p0, Lorg/videolan/libvlc/AWindow;->mSurfaceHelpers:[Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    aput-object v6, v3, v1

    .line 334
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 340
    .end local v2    # "surfaceHelper":Lorg/videolan/libvlc/AWindow$SurfaceHelper;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/libvlc/IVLCVout$Callback;

    .line 341
    .local v0, "cb":Lorg/videolan/libvlc/IVLCVout$Callback;
    invoke-interface {v0, p0}, Lorg/videolan/libvlc/IVLCVout$Callback;->onSurfacesDestroyed(Lorg/videolan/libvlc/IVLCVout;)V

    goto :goto_2
.end method

.method public getNativeHandler()Lorg/videolan/libvlc/AWindowNativeHandler;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow;->mAWindowNativeHandler:Lorg/videolan/libvlc/AWindowNativeHandler;

    return-object v0
.end method

.method public removeCallback(Lorg/videolan/libvlc/IVLCVout$Callback;)V
    .locals 1
    .param p1, "callback"    # Lorg/videolan/libvlc/IVLCVout$Callback;

    .prologue
    .line 432
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow;->mIVLCVoutCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 433
    return-void
.end method

.method public sendMouseEvent(IIII)V
    .locals 9
    .param p1, "action"    # I
    .param p2, "button"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 382
    iget-object v8, p0, Lorg/videolan/libvlc/AWindow;->mNativeLock:Ljava/lang/Object;

    monitor-enter v8

    .line 383
    :try_start_0
    iget-wide v0, p0, Lorg/videolan/libvlc/AWindow;->mCallbackNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 384
    iget-object v1, p0, Lorg/videolan/libvlc/AWindow;->mAWindowNativeHandler:Lorg/videolan/libvlc/AWindowNativeHandler;

    iget-wide v2, p0, Lorg/videolan/libvlc/AWindow;->mCallbackNativeHandle:J

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Lorg/videolan/libvlc/AWindowNativeHandler;->nativeOnMouseEvent(JIIII)V

    .line 382
    :goto_0
    monitor-exit v8

    .line 392
    return-void

    .line 386
    :cond_0
    iput p1, p0, Lorg/videolan/libvlc/AWindow;->mMouseAction:I

    .line 387
    iput p2, p0, Lorg/videolan/libvlc/AWindow;->mMouseButton:I

    .line 388
    iput p3, p0, Lorg/videolan/libvlc/AWindow;->mMouseX:I

    .line 389
    iput p4, p0, Lorg/videolan/libvlc/AWindow;->mMouseY:I

    goto :goto_0

    .line 382
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSubtitlesSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "subtitlesSurfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 303
    const/4 v0, 0x1

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/videolan/libvlc/AWindow;->setSurface(ILandroid/view/Surface;Landroid/view/SurfaceHolder;)V

    .line 304
    return-void
.end method

.method public setSubtitlesSurface(Landroid/view/Surface;Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "subtitlesSurface"    # Landroid/view/Surface;
    .param p2, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 297
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lorg/videolan/libvlc/AWindow;->setSurface(ILandroid/view/Surface;Landroid/view/SurfaceHolder;)V

    .line 298
    return-void
.end method

.method public setSubtitlesView(Landroid/view/SurfaceView;)V
    .locals 1
    .param p1, "subtitlesSurfaceView"    # Landroid/view/SurfaceView;

    .prologue
    .line 286
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/videolan/libvlc/AWindow;->setView(ILandroid/view/SurfaceView;)V

    .line 287
    return-void
.end method

.method public setSubtitlesView(Landroid/view/TextureView;)V
    .locals 1
    .param p1, "subtitlesTextureView"    # Landroid/view/TextureView;

    .prologue
    .line 292
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/videolan/libvlc/AWindow;->setView(ILandroid/view/TextureView;)V

    .line 293
    return-void
.end method

.method public setVideoSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "videoSurfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 280
    const/4 v0, 0x0

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/videolan/libvlc/AWindow;->setSurface(ILandroid/view/Surface;Landroid/view/SurfaceHolder;)V

    .line 281
    return-void
.end method

.method public setVideoSurface(Landroid/view/Surface;Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "videoSurface"    # Landroid/view/Surface;
    .param p2, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 274
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/videolan/libvlc/AWindow;->setSurface(ILandroid/view/Surface;Landroid/view/SurfaceHolder;)V

    .line 275
    return-void
.end method

.method public setVideoView(Landroid/view/SurfaceView;)V
    .locals 1
    .param p1, "videoSurfaceView"    # Landroid/view/SurfaceView;

    .prologue
    .line 263
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/videolan/libvlc/AWindow;->setView(ILandroid/view/SurfaceView;)V

    .line 264
    return-void
.end method

.method public setVideoView(Landroid/view/TextureView;)V
    .locals 1
    .param p1, "videoTextureView"    # Landroid/view/TextureView;

    .prologue
    .line 269
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/videolan/libvlc/AWindow;->setView(ILandroid/view/TextureView;)V

    .line 270
    return-void
.end method

.method public setWindowSize(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 396
    iget-object v1, p0, Lorg/videolan/libvlc/AWindow;->mNativeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 397
    :try_start_0
    iget-wide v2, p0, Lorg/videolan/libvlc/AWindow;->mCallbackNativeHandle:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow;->mAWindowNativeHandler:Lorg/videolan/libvlc/AWindowNativeHandler;

    iget-wide v2, p0, Lorg/videolan/libvlc/AWindow;->mCallbackNativeHandle:J

    invoke-virtual {v0, v2, v3, p1, p2}, Lorg/videolan/libvlc/AWindowNativeHandler;->nativeOnWindowSize(JII)V

    .line 396
    :goto_0
    monitor-exit v1

    .line 404
    return-void

    .line 400
    :cond_0
    iput p1, p0, Lorg/videolan/libvlc/AWindow;->mWindowWidth:I

    .line 401
    iput p2, p0, Lorg/videolan/libvlc/AWindow;->mWindowHeight:I

    goto :goto_0

    .line 396
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
