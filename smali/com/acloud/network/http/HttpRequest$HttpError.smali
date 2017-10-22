.class public Lcom/acloud/network/http/HttpRequest$HttpError;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/network/http/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpError"
.end annotation


# instance fields
.field private code:I

.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/acloud/network/http/HttpRequest$HttpError;->code:I

    .line 37
    iput-object p2, p0, Lcom/acloud/network/http/HttpRequest$HttpError;->msg:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/acloud/network/http/HttpRequest$HttpError;->code:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/acloud/network/http/HttpRequest$HttpError;->msg:Ljava/lang/String;

    return-object v0
.end method
