.class Lcom/acloud/stub/utils/LrcUtils$1;
.super Ljava/lang/Object;
.source "LrcUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/stub/utils/LrcUtils;->getLrcData(Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;)I
    .locals 2
    .param p1, "lhs"    # Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;
    .param p2, "rhs"    # Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;

    .prologue
    .line 80
    invoke-virtual {p1}, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;->getTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2}, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;->getTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;

    check-cast p2, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;

    invoke-virtual {p0, p1, p2}, Lcom/acloud/stub/utils/LrcUtils$1;->compare(Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;)I

    move-result v0

    return v0
.end method
