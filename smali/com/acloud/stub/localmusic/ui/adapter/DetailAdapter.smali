.class public Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter;
.super Lcom/acloud/adapter/GalaBaseAdapter;
.source "DetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter$DetailHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/acloud/adapter/GalaBaseAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private selectPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/acloud/adapter/GalaBaseAdapter;-><init>(Landroid/content/Context;)V

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter;->selectPosition:I

    .line 18
    iput-object p1, p0, Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter;->context:Landroid/content/Context;

    .line 19
    return-void
.end method

.method static synthetic access$0(Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter;)I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter;->selectPosition:I

    return v0
.end method

.method static synthetic access$1(Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getConvertViewId(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 33
    const v0, 0x7f030008

    return v0
.end method

.method public getNewHolder(I)Lcom/acloud/adapter/GalaBaseAdapter$ViewHolder;
    .locals 2
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/acloud/adapter/GalaBaseAdapter",
            "<",
            "Ljava/lang/String;",
            ">.ViewHolder<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter$DetailHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter$DetailHolder;-><init>(Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter;Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter$DetailHolder;)V

    return-object v0
.end method

.method public getSelectionPosition()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter;->selectPosition:I

    return v0
.end method

.method public setSelectionPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter;->selectPosition:I

    .line 23
    invoke-virtual {p0}, Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter;->notifyDataSetInvalidated()V

    .line 24
    return-void
.end method
