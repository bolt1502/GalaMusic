.class public Lorg/videolan/libvlc/Media$Type;
.super Ljava/lang/Object;
.source "Media.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/Media;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Type"
.end annotation


# static fields
.field public static final Directory:I = 0x2

.field public static final Disc:I = 0x3

.field public static final File:I = 0x1

.field public static final Playlist:I = 0x5

.field public static final Stream:I = 0x4

.field public static final Unknown:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
