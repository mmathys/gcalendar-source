.class public Lcom/google/android/common/http/UrlRules;
.super Ljava/lang/Object;
.source "UrlRules.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/common/http/UrlRules$UrlRuleFetcher;
    }
.end annotation


# instance fields
.field private mRuleMatcher:Lcom/google/android/common/http/RuleMatcher;

.field private final mRules:[Lcom/google/android/common/http/Rule;


# direct methods
.method constructor <init>([Lcom/google/android/common/http/Rule;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 75
    iput-object p1, p0, Lcom/google/android/common/http/UrlRules;->mRules:[Lcom/google/android/common/http/Rule;

    .line 76
    return-void
.end method

.method private getRuleMatcher()Lcom/google/android/common/http/RuleMatcher;
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/common/http/UrlRules;->mRuleMatcher:Lcom/google/android/common/http/RuleMatcher;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/google/android/common/http/RuleMatcher;

    iget-object v1, p0, Lcom/google/android/common/http/UrlRules;->mRules:[Lcom/google/android/common/http/Rule;

    invoke-direct {v0, v1}, Lcom/google/android/common/http/RuleMatcher;-><init>([Lcom/google/android/common/http/Rule;)V

    iput-object v0, p0, Lcom/google/android/common/http/UrlRules;->mRuleMatcher:Lcom/google/android/common/http/RuleMatcher;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/google/android/common/http/UrlRules;->mRuleMatcher:Lcom/google/android/common/http/RuleMatcher;

    return-object v0
.end method

.method public static getRules(Landroid/content/ContentResolver;)Lcom/google/android/common/http/UrlRules;
    .locals 1

    .prologue
    .line 103
    invoke-static {}, Lcom/google/android/common/http/UrlRules$UrlRuleFetcher;->getInstance()Lcom/google/android/common/http/UrlRules$UrlRuleFetcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/common/http/UrlRules$UrlRuleFetcher;->getRules(Landroid/content/ContentResolver;)Lcom/google/android/common/http/UrlRules;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public matchRule(Ljava/lang/String;)Lcom/google/android/common/http/Rule;
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/google/android/common/http/UrlRules;->getRuleMatcher()Lcom/google/android/common/http/RuleMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/common/http/RuleMatcher;->match(Ljava/lang/String;)Lcom/google/android/common/http/Rule;

    move-result-object v0

    .line 85
    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/common/http/Rule;->DEFAULT:Lcom/google/android/common/http/Rule;

    :cond_0
    return-object v0
.end method
