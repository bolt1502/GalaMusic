.class public Lcom/acloud/db/QuoteParam;
.super Ljava/lang/Object;
.source "QuoteParam.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    .local p0, "this":Lcom/acloud/db/QuoteParam;, "Lcom/acloud/db/QuoteParam<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "this":Lcom/acloud/db/QuoteParam;, "Lcom/acloud/db/QuoteParam<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/acloud/db/QuoteParam;->mData:Ljava/lang/Object;

    .line 19
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lcom/acloud/db/QuoteParam;, "Lcom/acloud/db/QuoteParam<TT;>;"
    iget-object v0, p0, Lcom/acloud/db/QuoteParam;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/acloud/db/QuoteParam;, "Lcom/acloud/db/QuoteParam<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/acloud/db/QuoteParam;->mData:Ljava/lang/Object;

    .line 23
    return-void
.end method
