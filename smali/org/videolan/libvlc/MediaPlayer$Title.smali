.class public Lorg/videolan/libvlc/MediaPlayer$Title;
.super Ljava/lang/Object;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Title"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/MediaPlayer$Title$Flags;
    }
.end annotation


# instance fields
.field public final duration:J

.field private final flags:I

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;I)V
    .locals 1
    .param p1, "duration"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "flags"    # I

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-wide p1, p0, Lorg/videolan/libvlc/MediaPlayer$Title;->duration:J

    .line 135
    iput-object p3, p0, Lorg/videolan/libvlc/MediaPlayer$Title;->name:Ljava/lang/String;

    .line 136
    iput p4, p0, Lorg/videolan/libvlc/MediaPlayer$Title;->flags:I

    .line 137
    return-void
.end method


# virtual methods
.method public isInteractive()Z
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lorg/videolan/libvlc/MediaPlayer$Title;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMenu()Z
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lorg/videolan/libvlc/MediaPlayer$Title;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
