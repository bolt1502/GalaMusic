.class Lcom/acloud/hanzi/HanziToPinyin$DialerSearchToken;
.super Lcom/acloud/hanzi/HanziToPinyin$Token;
.source "HanziToPinyin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/hanzi/HanziToPinyin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialerSearchToken"
.end annotation


# static fields
.field static final FIRSTCASE:I = 0x0

.field static final LOWERCASE:I = 0x2

.field static final UPPERCASE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/acloud/hanzi/HanziToPinyin;


# direct methods
.method private constructor <init>(Lcom/acloud/hanzi/HanziToPinyin;)V
    .locals 0

    .prologue
    .line 745
    iput-object p1, p0, Lcom/acloud/hanzi/HanziToPinyin$DialerSearchToken;->this$0:Lcom/acloud/hanzi/HanziToPinyin;

    invoke-direct {p0}, Lcom/acloud/hanzi/HanziToPinyin$Token;-><init>()V

    return-void
.end method
