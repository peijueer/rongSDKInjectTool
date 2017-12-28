.class public final Lcom/iqiyigame/plugin/utils/GameResourcesUtil;
.super Ljava/lang/Object;
.source "GameResourcesUtil.java"


# static fields
.field public static final ANIM:Ljava/lang/String; = "anim"

.field public static final COLOR:Ljava/lang/String; = "color"

.field public static final DIMEN:Ljava/lang/String; = "dimen"

.field public static final DRAWABLE:Ljava/lang/String; = "drawable"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final LAYOUT:Ljava/lang/String; = "layout"

.field public static final STRING:Ljava/lang/String; = "string"

.field public static final STYLE:Ljava/lang/String; = "style"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnimId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "animName"    # Ljava/lang/String;

    .prologue
    .line 41
    const-string v0, "anim"

    invoke-static {p0, v0, p1}, Lcom/iqiyigame/plugin/utils/GameResourcesUtil;->getResourcesIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getColorId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "colorName"    # Ljava/lang/String;

    .prologue
    .line 81
    const-string v0, "color"

    invoke-static {p0, v0, p1}, Lcom/iqiyigame/plugin/utils/GameResourcesUtil;->getResourcesIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getDimenId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dimenName"    # Ljava/lang/String;

    .prologue
    .line 91
    const-string v0, "dimen"

    invoke-static {p0, v0, p1}, Lcom/iqiyigame/plugin/utils/GameResourcesUtil;->getResourcesIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getDrawableId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawableName"    # Ljava/lang/String;

    .prologue
    .line 51
    const-string v0, "drawable"

    invoke-static {p0, v0, p1}, Lcom/iqiyigame/plugin/utils/GameResourcesUtil;->getResourcesIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getLayoutId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "layoutName"    # Ljava/lang/String;

    .prologue
    .line 61
    const-string v0, "layout"

    invoke-static {p0, v0, p1}, Lcom/iqiyigame/plugin/utils/GameResourcesUtil;->getResourcesIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getResourcesIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resourcesName"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 27
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-virtual {v1, p2, p1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 28
    .local v0, "id":I
    if-nez v0, :cond_0

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sdk : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u8d44\u6e90\u6587\u4ef6\u8bfb\u53d6\u4e0d\u5230\uff01"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iqiyigame/plugin/utils/GameLog;->log_e(Ljava/lang/String;)V

    .line 31
    :cond_0
    return v0
.end method

.method public static getStringFormResouse(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stringName"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "string"

    invoke-static {p0, v1, p1}, Lcom/iqiyigame/plugin/utils/GameResourcesUtil;->getResourcesIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stringName"    # Ljava/lang/String;

    .prologue
    .line 101
    const-string v0, "string"

    invoke-static {p0, v0, p1}, Lcom/iqiyigame/plugin/utils/GameResourcesUtil;->getResourcesIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getStyleId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "styleName"    # Ljava/lang/String;

    .prologue
    .line 115
    const-string v0, "style"

    invoke-static {p0, v0, p1}, Lcom/iqiyigame/plugin/utils/GameResourcesUtil;->getResourcesIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getViewID(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "viewId"    # Ljava/lang/String;

    .prologue
    .line 71
    const-string v0, "id"

    invoke-static {p0, v0, p1}, Lcom/iqiyigame/plugin/utils/GameResourcesUtil;->getResourcesIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
