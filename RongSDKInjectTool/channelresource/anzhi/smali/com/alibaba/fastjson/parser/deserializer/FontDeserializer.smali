.class public Lcom/alibaba/fastjson/parser/deserializer/FontDeserializer;
.super Ljava/lang/Object;
.source "FontDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/FontDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/FontDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/FontDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/FontDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/FontDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/16 v9, 0x10

    const/4 v8, 0x4

    const/4 v7, 0x2

    .line 17
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v1

    .line 19
    .local v1, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 20
    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 21
    const/4 v5, 0x0

    .line 76
    :goto_0
    return-object v5

    .line 24
    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    const/16 v6, 0xc

    if-eq v5, v6, :cond_1

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    if-eq v5, v9, :cond_1

    .line 25
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string v6, "syntax error"

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 27
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 29
    const/4 v3, 0x0

    .local v3, "size":I
    const/4 v4, 0x0

    .line 30
    .local v4, "style":I
    const/4 v2, 0x0

    .line 32
    .local v2, "name":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_3

    .line 33
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 76
    new-instance v5, Ljava/awt/Font;

    invoke-direct {v5, v2, v4, v3}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    goto :goto_0

    .line 38
    :cond_3
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    if-ne v5, v8, :cond_4

    .line 39
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v1, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 46
    const-string v5, "name"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 47
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    if-ne v5, v8, :cond_5

    .line 48
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 71
    :goto_2
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    if-ne v5, v9, :cond_2

    .line 72
    invoke-virtual {v1, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_1

    .line 42
    .end local v0    # "key":Ljava/lang/String;
    :cond_4
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string v6, "syntax error"

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 51
    .restart local v0    # "key":Ljava/lang/String;
    :cond_5
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string v6, "syntax error"

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 53
    :cond_6
    const-string v5, "style"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 54
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    if-ne v5, v7, :cond_7

    .line 55
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v4

    .line 56
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_2

    .line 58
    :cond_7
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string v6, "syntax error"

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 60
    :cond_8
    const-string v5, "size"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 61
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    if-ne v5, v7, :cond_9

    .line 62
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v3

    .line 63
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_2

    .line 65
    :cond_9
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string v6, "syntax error"

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 68
    :cond_a
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "syntax error, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 80
    const/16 v0, 0xc

    return v0
.end method
