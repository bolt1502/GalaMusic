.class public abstract Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/network/http/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "HttpRequestCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mBody:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mIsUpdate:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;, "Lcom/acloud/network/http/HttpRequest$HttpRequestCallback<TT;>;"
    .local p1, "body":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;->mBody:Ljava/lang/Object;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;->mIsUpdate:Z

    .line 56
    return-void
.end method


# virtual methods
.method public body()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;, "Lcom/acloud/network/http/HttpRequest$HttpRequestCallback<TT;>;"
    iget-object v0, p0, Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;->mBody:Ljava/lang/Object;

    return-object v0
.end method

.method public isUpdate()Z
    .locals 1

    .prologue
    .line 63
    .local p0, "this":Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;, "Lcom/acloud/network/http/HttpRequest$HttpRequestCallback<TT;>;"
    iget-boolean v0, p0, Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;->mIsUpdate:Z

    return v0
.end method

.method public abstract onFailure(Lcom/acloud/network/http/HttpRequest$HttpError;)V
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public setIsUpdate(Z)V
    .locals 0
    .param p1, "isUpdate"    # Z

    .prologue
    .line 59
    .local p0, "this":Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;, "Lcom/acloud/network/http/HttpRequest$HttpRequestCallback<TT;>;"
    iput-boolean p1, p0, Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;->mIsUpdate:Z

    .line 60
    return-void
.end method
