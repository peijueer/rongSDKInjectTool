.class Lcom/muzhiwan/sdk/core/MzwSdkController$MzwSdkControllerHolder;
.super Ljava/lang/Object;
.source "MzwSdkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muzhiwan/sdk/core/MzwSdkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MzwSdkControllerHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/muzhiwan/sdk/core/MzwSdkController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/muzhiwan/sdk/core/MzwSdkController;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/muzhiwan/sdk/core/MzwSdkController;-><init>(Lcom/muzhiwan/sdk/core/MzwSdkController$1;)V

    sput-object v0, Lcom/muzhiwan/sdk/core/MzwSdkController$MzwSdkControllerHolder;->INSTANCE:Lcom/muzhiwan/sdk/core/MzwSdkController;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/muzhiwan/sdk/core/MzwSdkController;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/muzhiwan/sdk/core/MzwSdkController$MzwSdkControllerHolder;->INSTANCE:Lcom/muzhiwan/sdk/core/MzwSdkController;

    return-object v0
.end method
