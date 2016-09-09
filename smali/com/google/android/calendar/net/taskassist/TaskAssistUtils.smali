.class public Lcom/google/android/calendar/net/taskassist/TaskAssistUtils;
.super Ljava/lang/Object;
.source "TaskAssistUtils.java"


# static fields
.field private static final LOWER_CASE_LANGUAGES:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 25
    const-string v0, "cs"

    const-string v1, "nb"

    const-string v2, "ru"

    const-string v3, "uk"

    .line 26
    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/net/taskassist/TaskAssistUtils;->LOWER_CASE_LANGUAGES:Lcom/google/common/collect/ImmutableSet;

    .line 25
    return-void
.end method

.method public static getLastFragment(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;)Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 137
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    if-nez v1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-object v0

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    iget-object v1, v1, Lcom/google/personalization/assist/annotate/api/nano/Annotation;->fragment:[Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;

    .line 142
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 143
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public static getSuggestionFullText(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->displayString:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->query:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->displayString:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getTimeLabel(Landroid/content/Context;Lcom/google/personalization/assist/annotate/api/nano/EventTime;Z)Ljava/lang/String;
    .locals 10

    .prologue
    .line 158
    iget-object v0, p1, Lcom/google/personalization/assist/annotate/api/nano/EventTime;->startTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    iget-wide v0, v0, Lcom/google/personalization/assist/annotate/api/nano/Time;->timeMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/net/taskassist/TaskAssistUtils;->timeMillisToDateTime(Ljava/lang/Long;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    .line 159
    if-nez v0, :cond_0

    .line 160
    const/4 v0, 0x0

    .line 184
    :goto_0
    return-object v0

    .line 162
    :cond_0
    iget-boolean v7, p1, Lcom/google/personalization/assist/annotate/api/nano/EventTime;->allDay:Z

    .line 164
    invoke-static {}, Lcom/android/calendar/time/DateTimeService;->getInstance()Lcom/android/calendar/time/DateTimeService;

    move-result-object v2

    .line 165
    invoke-virtual {v2}, Lcom/android/calendar/time/DateTimeService;->calendarTimeZone()Lcom/android/calendar/time/TimeZoneImpl;

    move-result-object v6

    .line 169
    invoke-virtual {v2, v0, v7, v6}, Lcom/android/calendar/time/DateTimeService;->fromLocalTime(Lcom/google/calendar/v2/client/service/api/time/DateTime;ZLcom/google/calendar/v2/client/service/api/time/TimeZone;)J

    move-result-wide v0

    .line 172
    iget-object v3, p1, Lcom/google/personalization/assist/annotate/api/nano/EventTime;->endTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-eqz v3, :cond_1

    .line 173
    iget-object v3, p1, Lcom/google/personalization/assist/annotate/api/nano/EventTime;->endTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    iget-wide v4, v3, Lcom/google/personalization/assist/annotate/api/nano/Time;->timeMs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/calendar/net/taskassist/TaskAssistUtils;->timeMillisToDateTime(Ljava/lang/Long;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v3

    .line 174
    invoke-virtual {v2, v3, v7, v6}, Lcom/android/calendar/time/DateTimeService;->fromLocalTime(Lcom/google/calendar/v2/client/service/api/time/DateTime;ZLcom/google/calendar/v2/client/service/api/time/TimeZone;)J

    move-result-wide v2

    .line 175
    if-nez v7, :cond_2

    if-eqz p2, :cond_2

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v6}, Lcom/android/calendar/time/TimeZoneImpl;->getId()Ljava/lang/String;

    move-result-object v6

    move-object v7, p0

    .line 176
    invoke-static/range {v0 .. v7}, Lcom/android/calendar/Utils;->getDisplayedRangeForKnownContext(JJJLjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-wide v2, v0

    .line 181
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 182
    if-eqz v4, :cond_3

    sget-object v5, Lcom/google/android/calendar/net/taskassist/TaskAssistUtils;->LOWER_CASE_LANGUAGES:Lcom/google/common/collect/ImmutableSet;

    .line 183
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    const/4 v8, 0x1

    .line 185
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v6}, Lcom/android/calendar/time/TimeZoneImpl;->getId()Ljava/lang/String;

    move-result-object v6

    move-object v9, p0

    .line 184
    invoke-static/range {v0 .. v9}, Lcom/android/calendar/Utils;->getDisplayedDatetime(JJJLjava/lang/String;ZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 183
    :cond_4
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public static hasAnnotationFragments(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;)Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    invoke-static {v0}, Lcom/google/android/calendar/net/taskassist/TaskAssistUtils;->hasAnnotationFragments(Lcom/google/personalization/assist/annotate/api/nano/Annotation;)Z

    move-result v0

    return v0
.end method

.method public static hasAnnotationFragments(Lcom/google/personalization/assist/annotate/api/nano/Annotation;)Z
    .locals 1

    .prologue
    .line 130
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Annotation;->fragment:[Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs isAnyOfFragmentTypes(Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;[I)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 42
    if-nez p0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v0

    .line 46
    :cond_1
    array-length v2, p1

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget v3, p1, v1

    .line 47
    iget v4, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->annotationType:I

    if-ne v4, v3, :cond_2

    .line 48
    const/4 v0, 0x1

    goto :goto_0

    .line 46
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isChippableFragment(Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;I)Z
    .locals 1

    .prologue
    .line 74
    packed-switch p1, :pswitch_data_0

    .line 80
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 76
    :pswitch_0
    invoke-static {p0}, Lcom/google/android/calendar/net/taskassist/TaskAssistUtils;->isReminderChippableFragment(Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;)Z

    move-result v0

    goto :goto_0

    .line 78
    :pswitch_1
    invoke-static {p0}, Lcom/google/android/calendar/net/taskassist/TaskAssistUtils;->isEventChippableFragment(Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;)Z

    move-result v0

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isConnectorFragment(Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;)Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {p0, v0}, Lcom/google/android/calendar/net/taskassist/TaskAssistUtils;->isAnyOfFragmentTypes(Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;[I)Z

    move-result v0

    return v0

    nop

    :array_0
    .array-data 4
        0xdf
        0x109
        0x7b
    .end array-data
.end method

.method public static isEventChippableFragment(Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;)Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {p0, v0}, Lcom/google/android/calendar/net/taskassist/TaskAssistUtils;->isAnyOfFragmentTypes(Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;[I)Z

    move-result v0

    return v0

    nop

    :array_0
    .array-data 4
        0x2
        0x1a
        0x10a
    .end array-data
.end method

.method public static isMultiStepChippableFragment(Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;)Z
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {p0, v0}, Lcom/google/android/calendar/net/taskassist/TaskAssistUtils;->isAnyOfFragmentTypes(Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;[I)Z

    move-result v0

    return v0

    nop

    :array_0
    .array-data 4
        0x10a
        0x142
        0x147
    .end array-data
.end method

.method public static isReminderChippableFragment(Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;)Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {p0, v0}, Lcom/google/android/calendar/net/taskassist/TaskAssistUtils;->isAnyOfFragmentTypes(Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;[I)Z

    move-result v0

    return v0

    nop

    :array_0
    .array-data 4
        0x142
        0x147
    .end array-data
.end method

.method private static timeMillisToDateTime(Ljava/lang/Long;)Lcom/google/calendar/v2/client/service/api/time/DateTime;
    .locals 4

    .prologue
    .line 200
    if-nez p0, :cond_0

    .line 201
    const/4 v0, 0x0

    .line 204
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/calendar/time/DateTimeService;->getInstance()Lcom/android/calendar/time/DateTimeService;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/calendar/time/DateTimeService;->dateTimeForMillis(J)Lcom/android/calendar/time/DateTimeImpl;

    move-result-object v0

    goto :goto_0
.end method
