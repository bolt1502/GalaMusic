.class public Lcom/acloud/PlayState;
.super Ljava/lang/Object;
.source "PlayState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/acloud/PlayState$PlayStateInterface;
    }
.end annotation


# static fields
.field private static mPlayState:Lcom/acloud/PlayState;

.field private static mPlayStateInterface:Lcom/acloud/PlayState$PlayStateInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    sput-object v0, Lcom/acloud/PlayState;->mPlayState:Lcom/acloud/PlayState;

    .line 16
    sput-object v0, Lcom/acloud/PlayState;->mPlayStateInterface:Lcom/acloud/PlayState$PlayStateInterface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static getInstance()Lcom/acloud/PlayState;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/acloud/PlayState;->mPlayState:Lcom/acloud/PlayState;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/acloud/PlayState;

    invoke-direct {v0}, Lcom/acloud/PlayState;-><init>()V

    sput-object v0, Lcom/acloud/PlayState;->mPlayState:Lcom/acloud/PlayState;

    .line 22
    :cond_0
    sget-object v0, Lcom/acloud/PlayState;->mPlayState:Lcom/acloud/PlayState;

    return-object v0
.end method

.method public static setPlaySate()V
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/acloud/PlayState;->mPlayStateInterface:Lcom/acloud/PlayState$PlayStateInterface;

    invoke-interface {v0}, Lcom/acloud/PlayState$PlayStateInterface;->play()V

    .line 31
    return-void
.end method

.method public static setStopSate()V
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/acloud/PlayState;->mPlayStateInterface:Lcom/acloud/PlayState$PlayStateInterface;

    invoke-interface {v0}, Lcom/acloud/PlayState$PlayStateInterface;->stop()V

    .line 35
    return-void
.end method


# virtual methods
.method public init(Lcom/acloud/PlayState$PlayStateInterface;)V
    .locals 0
    .param p1, "playStateInterface"    # Lcom/acloud/PlayState$PlayStateInterface;

    .prologue
    .line 38
    sput-object p1, Lcom/acloud/PlayState;->mPlayStateInterface:Lcom/acloud/PlayState$PlayStateInterface;

    .line 39
    return-void
.end method
