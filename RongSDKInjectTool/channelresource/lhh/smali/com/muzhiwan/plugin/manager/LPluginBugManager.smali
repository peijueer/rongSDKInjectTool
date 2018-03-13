.class public Lcom/muzhiwan/plugin/manager/LPluginBugManager;
.super Ljava/lang/Object;
.source "LPluginBugManager.java"


# static fields
.field private static final errorCollection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/muzhiwan/plugin/api/LPluginBugListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/muzhiwan/plugin/manager/LPluginBugManager;->errorCollection:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBugListener(Lcom/muzhiwan/plugin/api/LPluginBugListener;)V
    .locals 1
    .param p0, "lPluginBugListener"    # Lcom/muzhiwan/plugin/api/LPluginBugListener;

    .prologue
    .line 22
    sget-object v0, Lcom/muzhiwan/plugin/manager/LPluginBugManager;->errorCollection:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    return-void
.end method

.method public static callAllBugListener(Lcom/muzhiwan/plugin/api/LPluginBug;)V
    .locals 2
    .param p0, "error"    # Lcom/muzhiwan/plugin/api/LPluginBug;

    .prologue
    .line 34
    sget-object v0, Lcom/muzhiwan/plugin/manager/LPluginBugManager;->errorCollection:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 41
    :goto_0
    return-void

    .line 35
    :cond_0
    new-instance v0, Lcom/muzhiwan/plugin/manager/LPluginBugManager$1;

    sget-object v1, Lcom/muzhiwan/plugin/manager/LPluginBugManager;->errorCollection:Ljava/util/List;

    invoke-direct {v0, v1, p0}, Lcom/muzhiwan/plugin/manager/LPluginBugManager$1;-><init>(Ljava/util/Collection;Lcom/muzhiwan/plugin/api/LPluginBug;)V

    goto :goto_0
.end method

.method public static removeBugListener(Lcom/muzhiwan/plugin/api/LPluginBugListener;)V
    .locals 1
    .param p0, "lPluginBugListener"    # Lcom/muzhiwan/plugin/api/LPluginBugListener;

    .prologue
    .line 30
    sget-object v0, Lcom/muzhiwan/plugin/manager/LPluginBugManager;->errorCollection:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 31
    return-void
.end method
