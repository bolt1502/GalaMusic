.class public Lorg/videolan/libvlc/Media$Track$Type;
.super Ljava/lang/Object;
.source "Media.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/Media$Track;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Type"
.end annotation


# static fields
.field public static final Audio:I = 0x0

.field public static final Text:I = 0x2

.field public static final Unknown:I = -0x1

.field public static final Video:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
