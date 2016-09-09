.class public Lcom/google/android/common/http/UrlRules$UrlRuleFetcher;
.super Ljava/lang/Object;
.source "UrlRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/http/UrlRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UrlRuleFetcher"
.end annotation


# static fields
.field private static final sInstance:Lcom/google/android/common/http/UrlRules$UrlRuleFetcher;


# instance fields
.field private mCachedRules:Lcom/google/android/common/http/UrlRules;

.field private mCachedVersionToken:Ljava/lang/Object;

.field private mOverrideRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/common/http/Rule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lcom/google/android/common/http/UrlRules$UrlRuleFetcher;

    invoke-direct {v0}, Lcom/google/android/common/http/UrlRules$UrlRuleFetcher;-><init>()V

    sput-object v0, Lcom/google/android/common/http/UrlRules$UrlRuleFetcher;->sInstance:Lcom/google/android/common/http/UrlRules$UrlRuleFetcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Lcom/google/android/common/http/UrlRules;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/common/http/Rule;

    invoke-direct {v0, v1}, Lcom/google/android/common/http/UrlRules;-><init>([Lcom/google/android/common/http/Rule;)V

    iput-object v0, p0, Lcom/google/android/common/http/UrlRules$UrlRuleFetcher;->mCachedRules:Lcom/google/android/common/http/UrlRules;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/http/UrlRules$UrlRuleFetcher;->mOverrideRules:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/google/android/common/http/UrlRules$UrlRuleFetcher;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/google/android/common/http/UrlRules$UrlRuleFetcher;->sInstance:Lcom/google/android/common/http/UrlRules$UrlRuleFetcher;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getRules(Landroid/content/ContentResolver;)Lcom/google/android/common/http/UrlRules;
    .locals 9

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gsf/Gservices;->getVersionToken(Landroid/content/ContentResolver;)Ljava/lang/Object;

    move-result-object v2

    .line 148
    iget-object v0, p0, Lcom/google/android/common/http/UrlRules$UrlRuleFetcher;->mCachedVersionToken:Ljava/lang/Object;

    if-ne v2, v0, :cond_1

    .line 150
    const-string v0, "UrlRules"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    const-string v0, "UrlRules"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x22

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Using cached rules, versionToken: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/google/android/common/http/UrlRules$UrlRuleFetcher;->mCachedRules:Lcom/google/android/common/http/UrlRules;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :goto_0
    monitor-exit p0

    return-object v0

    .line 156
    :cond_1
    :try_start_1
    const-string v0, "UrlRules"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    const-string v0, "UrlRules"

    const-string v1, "Scanning for Gservices \"url:*\" rules"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "url:"

    aput-object v3, v0, v1

    invoke-static {p1, v0}, Lcom/google/android/gsf/Gservices;->getStringsByPrefix(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 161
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 162
    iget-object v1, p0, Lcom/google/android/common/http/UrlRules$UrlRuleFetcher;->mOverrideRules:Ljava/util/List;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 164
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    :try_start_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 168
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    .line 171
    const-string v5, "UrlRules"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 172
    const-string v5, "UrlRules"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x9

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "  Rule "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_4
    invoke-static {v1, v0}, Lcom/google/android/common/http/Rule;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/common/http/Rule;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/google/android/common/http/Rule$RuleFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 175
    :catch_0
    move-exception v0

    .line 177
    :try_start_3
    const-string v1, "UrlRules"

    const-string v5, "Invalid rule from Gservices"

    invoke-static {v1, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 180
    :cond_5
    :try_start_4
    new-instance v1, Lcom/google/android/common/http/UrlRules;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/common/http/Rule;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/common/http/Rule;

    invoke-direct {v1, v0}, Lcom/google/android/common/http/UrlRules;-><init>([Lcom/google/android/common/http/Rule;)V

    iput-object v1, p0, Lcom/google/android/common/http/UrlRules$UrlRuleFetcher;->mCachedRules:Lcom/google/android/common/http/UrlRules;

    .line 181
    iput-object v2, p0, Lcom/google/android/common/http/UrlRules$UrlRuleFetcher;->mCachedVersionToken:Ljava/lang/Object;

    .line 182
    const-string v0, "UrlRules"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 183
    const-string v0, "UrlRules"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "New rules stored, versionToken: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_6
    iget-object v0, p0, Lcom/google/android/common/http/UrlRules$UrlRuleFetcher;->mCachedRules:Lcom/google/android/common/http/UrlRules;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method
