.class public Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;
.super Ljava/lang/Object;
.source "LrcListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LrcData"
.end annotation


# instance fields
.field private lrc:Ljava/lang/String;

.field private time:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;->lrc:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getLrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;->lrc:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;->time:Ljava/lang/Long;

    return-object v0
.end method

.method public setLrc(Ljava/lang/String;)V
    .locals 0
    .param p1, "lrc"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;->lrc:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setTime(Ljava/lang/Long;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/Long;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;->time:Ljava/lang/Long;

    .line 34
    return-void
.end method
