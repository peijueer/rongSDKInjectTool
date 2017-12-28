.class public abstract Lcom/nearme/atlas/offlinepay/application/ui/activities/BaseActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public finishDelay(I)V
    .locals 4

    .prologue
    .line 9
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/nearme/atlas/offlinepay/application/ui/activities/a;

    invoke-direct {v1, p0}, Lcom/nearme/atlas/offlinepay/application/ui/activities/a;-><init>(Lcom/nearme/atlas/offlinepay/application/ui/activities/BaseActivity;)V

    .line 13
    int-to-long v2, p1

    .line 9
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 14
    return-void
.end method
