.class public Lcom/muzhiwan/plugin/bean/LPluginInfo;
.super Ljava/lang/Object;
.source "LPluginInfo.java"


# instance fields
.field apkIcon:Landroid/graphics/drawable/Drawable;

.field apkPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApkIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/muzhiwan/plugin/bean/LPluginInfo;->apkIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getApkPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/muzhiwan/plugin/bean/LPluginInfo;->apkPath:Ljava/lang/String;

    return-object v0
.end method

.method public setApkIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "apkIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/muzhiwan/plugin/bean/LPluginInfo;->apkIcon:Landroid/graphics/drawable/Drawable;

    .line 24
    return-void
.end method

.method public setApkPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/muzhiwan/plugin/bean/LPluginInfo;->apkPath:Ljava/lang/String;

    .line 16
    return-void
.end method
