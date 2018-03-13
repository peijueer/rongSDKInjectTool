.class Lcom/muzhiwan/sdk/core/InnerController$InnerControllerHolder;
.super Ljava/lang/Object;
.source "InnerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muzhiwan/sdk/core/InnerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerControllerHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/muzhiwan/sdk/core/InnerController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 96
    new-instance v0, Lcom/muzhiwan/sdk/core/InnerController;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/muzhiwan/sdk/core/InnerController;-><init>(Lcom/muzhiwan/sdk/core/InnerController$1;)V

    sput-object v0, Lcom/muzhiwan/sdk/core/InnerController$InnerControllerHolder;->INSTANCE:Lcom/muzhiwan/sdk/core/InnerController;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$900()Lcom/muzhiwan/sdk/core/InnerController;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/muzhiwan/sdk/core/InnerController$InnerControllerHolder;->INSTANCE:Lcom/muzhiwan/sdk/core/InnerController;

    return-object v0
.end method
