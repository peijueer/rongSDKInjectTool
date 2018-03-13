.class public Lcom/muzhiwan/plugin/api/LPluginBug;
.super Ljava/lang/Object;
.source "LPluginBug.java"


# instance fields
.field public error:Ljava/lang/Throwable;

.field public errorPlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

.field public errorThread:Ljava/lang/Thread;

.field public errorTime:J

.field public processId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
