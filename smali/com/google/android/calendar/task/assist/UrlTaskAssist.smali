.class public Lcom/google/android/calendar/task/assist/UrlTaskAssist;
.super Lcom/google/android/calendar/task/assist/TaskAssistHolder;
.source "UrlTaskAssist.java"


# static fields
.field private static final GRAMMAR_RULES_TYPES_TO_ICON_RES_IDS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final flair:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x1c

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$drawable;->quantum_ic_flight_grey600_24:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x1d

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$drawable;->quantum_ic_hotel_grey600_24:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x1f

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$drawable;->quantum_ic_flight_grey600_24:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x12

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$drawable;->quantum_ic_shopping_cart_grey600_24:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x22

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$drawable;->quantum_ic_theaters_grey600_24:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/task/assist/UrlTaskAssist;->GRAMMAR_RULES_TYPES_TO_ICON_RES_IDS:Ljava/util/Map;

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)V
    .locals 1

    .prologue
    .line 31
    .line 32
    invoke-static {p2}, Lcom/google/android/calendar/task/TaskAssistanceUtils;->getFlairForGrammarRuleType(I)Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/calendar/task/assist/UrlTaskAssist;-><init>(Lcom/google/personalization/assist/annotate/api/nano/Assistance;ILjava/lang/String;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/google/personalization/assist/annotate/api/nano/Assistance;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/google/android/calendar/task/assist/TaskAssistHolder;-><init>(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)V

    .line 37
    iput-object p3, p0, Lcom/google/android/calendar/task/assist/UrlTaskAssist;->flair:Ljava/lang/String;

    .line 38
    const-string v0, "url"

    iput-object v0, p0, Lcom/google/android/calendar/task/assist/UrlTaskAssist;->mAnalyticsLabel:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public getAssistActionText(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/calendar/task/assist/UrlTaskAssist;->mAssistance:Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->viewUrlAction:Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->actionText:Ljava/lang/String;

    .line 44
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/task/assist/UrlTaskAssist;->mAssistance:Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->viewUrlAction:Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->title:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getAssistInfoText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/calendar/task/assist/UrlTaskAssist;->mAssistance:Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->viewUrlAction:Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->actionDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/calendar/task/assist/UrlTaskAssist;->mAssistance:Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->viewUrlAction:Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getIconId()I
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lcom/google/android/calendar/task/assist/UrlTaskAssist;->GRAMMAR_RULES_TYPES_TO_ICON_RES_IDS:Ljava/util/Map;

    iget v1, p0, Lcom/google/android/calendar/task/assist/UrlTaskAssist;->mGrammarRuleType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lcom/google/android/calendar/task/assist/UrlTaskAssist;->GRAMMAR_RULES_TYPES_TO_ICON_RES_IDS:Ljava/util/Map;

    iget v1, p0, Lcom/google/android/calendar/task/assist/UrlTaskAssist;->mGrammarRuleType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 64
    :goto_0
    return v0

    .line 66
    :cond_0
    sget v0, Lcom/android/calendar/R$drawable;->quantum_ic_public_grey600_24:I

    goto :goto_0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/calendar/task/assist/UrlTaskAssist;->flair:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/calendar/task/assist/UrlTaskAssist;->getAssistFlairUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gotoAssist(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 76
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/google/android/calendar/task/assist/UrlTaskAssist;->mAssistance:Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    iget-object v2, v2, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->viewUrlAction:Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;

    iget-object v2, v2, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->url:Ljava/lang/String;

    .line 77
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 78
    invoke-static {p1, v0}, Lcom/google/android/calendar/task/assist/UrlTaskAssist;->prepareToGotoAssist(Landroid/content/Context;Landroid/content/Intent;)V

    .line 79
    invoke-virtual {p0, p1, v0}, Lcom/google/android/calendar/task/assist/UrlTaskAssist;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 80
    return-void
.end method
