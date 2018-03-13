.class public Lcom/muzhiwan/plugin/LPluginConfig;
.super Ljava/lang/Object;
.source "LPluginConfig.java"


# static fields
.field public static final DEF_PLUGIN_CLASS_NAME:Ljava/lang/String; = "no_activity_proxy_now"

.field public static final DEF_PLUGIN_DEX_PATH:Ljava/lang/String; = "no_dex_path"

.field public static FLAG_NEW_SERVICE:Z = false

.field public static final KEY_PLUGIN_ACT_NAME:Ljava/lang/String; = "plugin_act_name"

.field public static final KEY_PLUGIN_DEX_PATH:Ljava/lang/String; = "plugin_dex_path"

.field public static final KEY_PLUGIN_INDEX:Ljava/lang/String; = "activity_index"

.field public static usePluginTitle:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    sput-boolean v0, Lcom/muzhiwan/plugin/LPluginConfig;->usePluginTitle:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
