.class public Lorg/videolan/libvlc/Media$Parse;
.super Ljava/lang/Object;
.source "Media.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/Media;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parse"
.end annotation


# static fields
.field public static final DoInteract:I = 0x8

.field public static final FetchLocal:I = 0x2

.field public static final FetchNetwork:I = 0x4

.field public static final ParseLocal:I = 0x0

.field public static final ParseNetwork:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
