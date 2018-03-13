.class public final Lcom/zqhy/sdk/db/UserBean;
.super Ljava/lang/Object;
.source "UserBean.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Ljava/io/Serializable;


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.zqhy.zqsdk.provider"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_STRING:Ljava/lang/String; = "content://com.zqhy.zqsdk.provider/user"

.field public static final KEY_PASSWORD:Ljava/lang/String; = "password"

.field public static final KEY_TIME:Ljava/lang/String; = "time"

.field public static final KEY_USERNAME:Ljava/lang/String; = "username"

.field public static final MIME_DIR_PREFIX:Ljava/lang/String; = "vnd.android.cursor.dir"

.field public static final MIME_ITEM:Ljava/lang/String; = "vnd.example.people"

.field public static final MIME_ITEM_PREFIX:Ljava/lang/String; = "vnd.android.cursor.item"

.field public static final MIME_TYPE_MULTIPLE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.example.people"

.field public static final MIME_TYPE_SINGLE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.example.people"

.field public static final PATH_MULTIPLE:Ljava/lang/String; = "user"

.field public static final PATH_SINGLE:Ljava/lang/String; = "user/#"


# instance fields
.field private addTime:J

.field private password:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "content://com.zqhy.zqsdk.provider/user"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zqhy/sdk/db/UserBean;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/zqhy/sdk/db/UserBean;->username:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/zqhy/sdk/db/UserBean;->password:Ljava/lang/String;

    .line 41
    iput-wide p3, p0, Lcom/zqhy/sdk/db/UserBean;->addTime:J

    .line 42
    return-void
.end method


# virtual methods
.method public getAddTime()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/zqhy/sdk/db/UserBean;->addTime:J

    return-wide v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/zqhy/sdk/db/UserBean;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/zqhy/sdk/db/UserBean;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setAddTime(J)V
    .locals 1

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/zqhy/sdk/db/UserBean;->addTime:J

    .line 66
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/zqhy/sdk/db/UserBean;->password:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/zqhy/sdk/db/UserBean;->username:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v2, 0x27

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserBean{username=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zqhy/sdk/db/UserBean;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", password=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zqhy/sdk/db/UserBean;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", addTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/zqhy/sdk/db/UserBean;->addTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
