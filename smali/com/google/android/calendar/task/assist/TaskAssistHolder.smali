.class public abstract Lcom/google/android/calendar/task/assist/TaskAssistHolder;
.super Ljava/lang/Object;
.source "TaskAssistHolder.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field protected mAnalyticsLabel:Ljava/lang/String;

.field final mAssistance:Lcom/google/personalization/assist/annotate/api/nano/Assistance;

.field final mGrammarRuleType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/task/assist/TaskAssistHolder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/calendar/task/assist/TaskAssistHolder;->mAnalyticsLabel:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/google/android/calendar/task/assist/TaskAssistHolder;->mAssistance:Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    .line 38
    iput p2, p0, Lcom/google/android/calendar/task/assist/TaskAssistHolder;->mGrammarRuleType:I

    .line 39
    return-void
.end method

.method protected static canGoToAssist(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 48
    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 49
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static getAssistFlairUrlString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->getAssistFlairUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static prepareToGotoAssist(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 63
    invoke-static {p1}, Lcom/android/calendar/Utils;->prepareIntentToOpenLink(Landroid/content/Intent;)V

    .line 64
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 65
    const-string v0, "com.android.browser.application_id"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    return-void
.end method


# virtual methods
.method public abstract getAssistActionText(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getAssistInfoText(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getDescription(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getDisplayText(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getIconId()I
.end method

.method public abstract getImageUrl()Ljava/lang/String;
.end method

.method public getSecondaryDisplayText(Landroid/content/Context;)Landroid/text/SpannableString;
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract gotoAssist(Landroid/content/Context;)V
.end method

.method public isClickable(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public logClick(Landroid/content/Context;I)V
    .locals 8

    .prologue
    .line 166
    invoke-static {p1}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    .line 167
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/android/calendar/R$string;->analytics_action_assist:I

    .line 168
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/calendar/task/assist/TaskAssistHolder;->mAnalyticsLabel:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/calendar/task/assist/TaskAssistHolder;->mGrammarRuleType:I

    int-to-long v6, v1

    .line 169
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v1, p1

    .line 166
    invoke-interface/range {v0 .. v5}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 170
    return-void
.end method

.method protected onGoToAssistFailed(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 74
    sget v0, Lcom/android/calendar/R$string;->activity_not_found:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 75
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/task/assist/TaskAssistHolder;->getAssistActionText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 77
    return-void
.end method

.method protected startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 85
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    sget-object v1, Lcom/google/android/calendar/task/assist/TaskAssistHolder;->TAG:Ljava/lang/String;

    const-string v2, "Unable to find activity for intent"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/task/assist/TaskAssistHolder;->onGoToAssistFailed(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 89
    :catch_1
    move-exception v0

    .line 90
    sget-object v1, Lcom/google/android/calendar/task/assist/TaskAssistHolder;->TAG:Ljava/lang/String;

    const-string v2, "Unexpected error starting an activity for intent"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
