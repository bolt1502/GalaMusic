.class public Lcom/acloud/hanzi/HanziToPinyin$Token;
.super Ljava/lang/Object;
.source "HanziToPinyin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/hanzi/HanziToPinyin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Token"
.end annotation


# static fields
.field public static final ARABIC:I = 0xf

.field public static final HEBREW:I = 0x10

.field public static final LATIN:I = 0x1

.field public static final PINYIN:I = 0x2

.field public static final RUSSIAN:I = 0xe

.field public static final SEPARATOR:Ljava/lang/String; = " "

.field public static final UNKNOWN:I = 0x3


# instance fields
.field public source:Ljava/lang/String;

.field public target:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "target"    # Ljava/lang/String;

    .prologue
    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    iput p1, p0, Lcom/acloud/hanzi/HanziToPinyin$Token;->type:I

    .line 549
    iput-object p2, p0, Lcom/acloud/hanzi/HanziToPinyin$Token;->source:Ljava/lang/String;

    .line 550
    iput-object p3, p0, Lcom/acloud/hanzi/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 551
    return-void
.end method
