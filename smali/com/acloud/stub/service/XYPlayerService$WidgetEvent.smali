.class final enum Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;
.super Ljava/lang/Enum;
.source "XYPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/stub/service/XYPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "WidgetEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEFAULT:Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

.field private static final synthetic ENUM$VALUES:[Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

.field public static final enum NEXT:Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

.field public static final enum PAUSE:Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

.field public static final enum PLAY:Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

.field public static final enum PREV:Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 222
    new-instance v0, Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;->DEFAULT:Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    new-instance v0, Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    const-string v1, "PLAY"

    invoke-direct {v0, v1, v3}, Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;->PLAY:Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    new-instance v0, Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v4}, Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;->PAUSE:Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    new-instance v0, Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    const-string v1, "PREV"

    invoke-direct {v0, v1, v5}, Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;->PREV:Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    new-instance v0, Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    const-string v1, "NEXT"

    invoke-direct {v0, v1, v6}, Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;->NEXT:Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    .line 221
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    sget-object v1, Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;->DEFAULT:Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;->PLAY:Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;->PAUSE:Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;->PREV:Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;->NEXT:Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    aput-object v1, v0, v6

    sput-object v0, Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;->ENUM$VALUES:[Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    return-object v0
.end method

.method public static values()[Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;->ENUM$VALUES:[Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    array-length v1, v0

    new-array v2, v1, [Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
