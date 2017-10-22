.class Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;
.super Ljava/lang/Object;
.source "AWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/AWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuffersGeometryCond"
.end annotation


# instance fields
.field private abort:Z

.field private configured:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    iput-boolean v0, p0, Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;->configured:Z

    .line 420
    iput-boolean v0, p0, Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;->abort:Z

    .line 418
    return-void
.end method

.method synthetic constructor <init>(Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;)V
    .locals 0

    .prologue
    .line 418
    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;)Z
    .locals 1

    .prologue
    .line 419
    iget-boolean v0, p0, Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;->configured:Z

    return v0
.end method

.method static synthetic access$2(Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;)Z
    .locals 1

    .prologue
    .line 420
    iget-boolean v0, p0, Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;->abort:Z

    return v0
.end method

.method static synthetic access$3(Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;Z)V
    .locals 0

    .prologue
    .line 419
    iput-boolean p1, p0, Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;->configured:Z

    return-void
.end method

.method static synthetic access$4(Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;Z)V
    .locals 0

    .prologue
    .line 420
    iput-boolean p1, p0, Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;->abort:Z

    return-void
.end method
