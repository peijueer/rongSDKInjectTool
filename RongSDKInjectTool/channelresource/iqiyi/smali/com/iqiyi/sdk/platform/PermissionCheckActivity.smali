.class public Lcom/iqiyi/sdk/platform/PermissionCheckActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "PermissionCheckActivity.java"


# static fields
.field private static permissionGroup:[Ljava/lang/String; = null

.field private static permissionListener:Lcom/iqiyi/sdk/platform/GamePlatformCheckPermissionListener; = null

.field private static final requestPermission:I = 0x6e


# instance fields
.field private unauthorionGroup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/iqiyi/sdk/platform/PermissionCheckActivity;->permissionGroup:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iqiyi/sdk/platform/PermissionCheckActivity;->unauthorionGroup:Ljava/util/List;

    return-void
.end method

.method public static checkPermission(Landroid/app/Activity;)Z
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 41
    const/4 v1, 0x1

    .line 42
    .local v1, "permissions":Z
    sget-object v3, Lcom/iqiyi/sdk/platform/PermissionCheckActivity;->permissionGroup:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 43
    .local v0, "permission":Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 44
    const/4 v1, 0x0

    .line 49
    .end local v0    # "permission":Ljava/lang/String;
    :cond_0
    return v1

    .line 42
    .restart local v0    # "permission":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getUnAuthorizePermission(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 76
    sget-object v2, Lcom/iqiyi/sdk/platform/PermissionCheckActivity;->permissionGroup:[Ljava/lang/String;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 77
    .local v0, "permission":Ljava/lang/String;
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 78
    iget-object v4, p0, Lcom/iqiyi/sdk/platform/PermissionCheckActivity;->unauthorionGroup:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    .end local v0    # "permission":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static setPermissionListener(Lcom/iqiyi/sdk/platform/GamePlatformCheckPermissionListener;)V
    .locals 0
    .param p0, "permissionListener"    # Lcom/iqiyi/sdk/platform/GamePlatformCheckPermissionListener;

    .prologue
    .line 32
    sput-object p0, Lcom/iqiyi/sdk/platform/PermissionCheckActivity;->permissionListener:Lcom/iqiyi/sdk/platform/GamePlatformCheckPermissionListener;

    .line 33
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Override"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 87
    const/16 v4, 0x6e

    if-ne v4, p1, :cond_6

    .line 88
    const/4 v1, 0x0

    .line 89
    .local v1, "granted":Z
    iget-object v4, p0, Lcom/iqiyi/sdk/platform/PermissionCheckActivity;->unauthorionGroup:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 90
    .local v3, "permission":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, p2

    if-ge v2, v5, :cond_3

    .line 91
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "permission : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p2, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/iqiyigame/plugin/utils/GameLog;->log_d(Ljava/lang/String;)V

    .line 92
    aget-object v5, p2, v2

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 93
    aget v0, p3, v2

    .line 94
    .local v0, "grant":I
    if-nez v0, :cond_2

    .line 95
    const/4 v1, 0x1

    .line 90
    .end local v0    # "grant":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    .restart local v0    # "grant":I
    :cond_2
    const/4 v1, 0x0

    .line 104
    .end local v0    # "grant":I
    :cond_3
    if-nez v1, :cond_0

    .line 111
    .end local v2    # "i":I
    .end local v3    # "permission":Ljava/lang/String;
    :cond_4
    if-eqz v1, :cond_7

    .line 112
    sget-object v4, Lcom/iqiyi/sdk/platform/PermissionCheckActivity;->permissionListener:Lcom/iqiyi/sdk/platform/GamePlatformCheckPermissionListener;

    if-eqz v4, :cond_5

    .line 113
    sget-object v4, Lcom/iqiyi/sdk/platform/PermissionCheckActivity;->permissionListener:Lcom/iqiyi/sdk/platform/GamePlatformCheckPermissionListener;

    invoke-interface {v4}, Lcom/iqiyi/sdk/platform/GamePlatformCheckPermissionListener;->onAllow()V

    .line 121
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/iqiyi/sdk/platform/PermissionCheckActivity;->finish()V

    .line 123
    .end local v1    # "granted":Z
    :cond_6
    return-void

    .line 116
    .restart local v1    # "granted":Z
    :cond_7
    sget-object v4, Lcom/iqiyi/sdk/platform/PermissionCheckActivity;->permissionListener:Lcom/iqiyi/sdk/platform/GamePlatformCheckPermissionListener;

    if-eqz v4, :cond_5

    .line 117
    sget-object v4, Lcom/iqiyi/sdk/platform/PermissionCheckActivity;->permissionListener:Lcom/iqiyi/sdk/platform/GamePlatformCheckPermissionListener;

    invoke-interface {v4}, Lcom/iqiyi/sdk/platform/GamePlatformCheckPermissionListener;->onDeny()V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 63
    invoke-direct {p0, p0}, Lcom/iqiyi/sdk/platform/PermissionCheckActivity;->getUnAuthorizePermission(Landroid/app/Activity;)V

    .line 64
    iget-object v0, p0, Lcom/iqiyi/sdk/platform/PermissionCheckActivity;->unauthorionGroup:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/iqiyi/sdk/platform/PermissionCheckActivity;->unauthorionGroup:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/16 v1, 0x6e

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 72
    :goto_0
    return-void

    .line 67
    :cond_0
    sget-object v0, Lcom/iqiyi/sdk/platform/PermissionCheckActivity;->permissionListener:Lcom/iqiyi/sdk/platform/GamePlatformCheckPermissionListener;

    if-eqz v0, :cond_1

    .line 68
    sget-object v0, Lcom/iqiyi/sdk/platform/PermissionCheckActivity;->permissionListener:Lcom/iqiyi/sdk/platform/GamePlatformCheckPermissionListener;

    invoke-interface {v0}, Lcom/iqiyi/sdk/platform/GamePlatformCheckPermissionListener;->onAllow()V

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/iqiyi/sdk/platform/PermissionCheckActivity;->finish()V

    goto :goto_0
.end method
