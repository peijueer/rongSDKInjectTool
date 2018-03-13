.class public interface abstract Lcom/muzhiwan/plugin/control/PluginActivityCallback;
.super Ljava/lang/Object;
.source "PluginActivityCallback.java"


# virtual methods
.method public abstract callDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract callOnBackPressed()V
.end method

.method public abstract callOnConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract callOnCreate(Landroid/os/Bundle;)V
.end method

.method public abstract callOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.end method

.method public abstract callOnCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.end method

.method public abstract callOnDestroy()V
.end method

.method public abstract callOnDetachedFromWindow()V
.end method

.method public abstract callOnKeyDown(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract callOnNewIntent(Landroid/content/Intent;)V
.end method

.method public abstract callOnPause()V
.end method

.method public abstract callOnPostResume()V
.end method

.method public abstract callOnRestart()V
.end method

.method public abstract callOnRestoreInstanceState(Landroid/os/Bundle;)V
.end method

.method public abstract callOnResume()V
.end method

.method public abstract callOnSaveInstanceState(Landroid/os/Bundle;)V
.end method

.method public abstract callOnStart()V
.end method

.method public abstract callOnStop()V
.end method
