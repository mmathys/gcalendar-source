.class public Lcom/google/android/calendar/task/TaskAssistanceUtils;
.super Ljava/lang/Object;
.source "TaskAssistanceUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final grammarRuleTypeToFlair:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    sget-object v0, Lcom/google/android/calendar/task/assist/TaskAssistHolder;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/google/android/calendar/task/TaskAssistanceUtils;->TAG:Ljava/lang/String;

    .line 47
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x5f

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "documents"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x30

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "documents"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x1d

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "hotel"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x1c

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "flight"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x58

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "documents"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x1f

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "flight"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/4 v1, 0x4

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pay"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x26

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pay"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x52

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "documents"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x5c

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "documents"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x31

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "documents"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/task/TaskAssistanceUtils;->grammarRuleTypeToFlair:Ljava/util/Map;

    .line 46
    return-void
.end method

.method public static createTaskAssistHolder(Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;)Lcom/google/android/calendar/task/assist/TaskAssistHolder;
    .locals 2

    .prologue
    .line 190
    invoke-static {p0}, Lcom/google/android/calendar/task/TaskAssistanceUtils;->createTaskAssistHolderList(Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;)Ljava/util/List;

    move-result-object v0

    .line 191
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createTaskAssistHolder([B)Lcom/google/android/calendar/task/assist/TaskAssistHolder;
    .locals 1

    .prologue
    .line 201
    invoke-static {p0}, Lcom/google/android/calendar/task/TaskAssistanceUtils;->getTaskAssistance([B)Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/task/TaskAssistanceUtils;->createTaskAssistHolder(Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;)Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    move-result-object v0

    return-object v0
.end method

.method public static createTaskAssistHolderList(Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/task/assist/TaskAssistHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    if-eqz p0, :cond_c

    .line 211
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->assistance:[Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    array-length v2, v0

    .line 212
    iget v3, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->grammarRuleType:I

    .line 213
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 214
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_b

    .line 215
    iget-object v4, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->assistance:[Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    aget-object v4, v4, v0

    .line 216
    invoke-static {v4, v3}, Lcom/google/android/calendar/task/TaskAssistanceUtils;->hasCalendarAssistance(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 217
    new-instance v5, Lcom/google/android/calendar/task/assist/CalendarTaskAssist;

    invoke-direct {v5, v4, v3}, Lcom/google/android/calendar/task/assist/CalendarTaskAssist;-><init>(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    :cond_1
    invoke-static {v4, v3}, Lcom/google/android/calendar/task/TaskAssistanceUtils;->hasCallOrganizationAction(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 219
    new-instance v5, Lcom/google/android/calendar/task/assist/CallOrganizationTaskAssist;

    invoke-direct {v5, v4, v3}, Lcom/google/android/calendar/task/assist/CallOrganizationTaskAssist;-><init>(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    add-int/lit8 v4, v0, 0x1

    if-ge v4, v2, :cond_0

    iget-object v4, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->assistance:[Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    add-int/lit8 v5, v0, 0x1

    aget-object v4, v4, v5

    .line 222
    invoke-static {v4, v3}, Lcom/google/android/calendar/task/TaskAssistanceUtils;->hasCallAction(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 225
    :cond_2
    invoke-static {v4, v3}, Lcom/google/android/calendar/task/TaskAssistanceUtils;->hasCallAction(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 226
    new-instance v5, Lcom/google/android/calendar/task/assist/CallTaskAssist;

    invoke-direct {v5, v4, v3}, Lcom/google/android/calendar/task/assist/CallTaskAssist;-><init>(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 227
    :cond_3
    invoke-static {v4, v3}, Lcom/google/android/calendar/task/TaskAssistanceUtils;->hasDeadlineAssistance(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 228
    new-instance v5, Lcom/google/android/calendar/task/assist/DeadlineTaskAssist;

    invoke-direct {v5, v4, v3}, Lcom/google/android/calendar/task/assist/DeadlineTaskAssist;-><init>(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 229
    :cond_4
    invoke-static {v4, v3}, Lcom/google/android/calendar/task/TaskAssistanceUtils;->hasEmailAction(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 230
    new-instance v5, Lcom/google/android/calendar/task/assist/EmailTaskAssist;

    invoke-direct {v5, v4, v3}, Lcom/google/android/calendar/task/assist/EmailTaskAssist;-><init>(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 231
    :cond_5
    invoke-static {v4, v3}, Lcom/google/android/calendar/task/TaskAssistanceUtils;->hasFinanceAssistance(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 232
    new-instance v5, Lcom/google/android/calendar/task/assist/FinanceTaskAssist;

    invoke-direct {v5, v4, v3}, Lcom/google/android/calendar/task/assist/FinanceTaskAssist;-><init>(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 233
    :cond_6
    invoke-static {v4, v3}, Lcom/google/android/calendar/task/TaskAssistanceUtils;->hasReturnProductAssistance(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)Z

    move-result v5

    if-eqz v5, :cond_7

    add-int/lit8 v5, v0, 0x1

    if-ge v5, v2, :cond_7

    iget-object v5, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->assistance:[Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    add-int/lit8 v6, v0, 0x1

    aget-object v5, v5, v6

    .line 235
    invoke-static {v5}, Lcom/google/android/calendar/task/TaskAssistanceUtils;->hasViewUrlAction(Lcom/google/personalization/assist/annotate/api/nano/Assistance;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 238
    new-instance v5, Lcom/google/android/calendar/task/assist/ReturnProductTaskAssist;

    iget-object v6, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->assistance:[Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    add-int/lit8 v7, v0, 0x1

    aget-object v6, v6, v7

    invoke-direct {v5, v4, v6, v3}, Lcom/google/android/calendar/task/assist/ReturnProductTaskAssist;-><init>(Lcom/google/personalization/assist/annotate/api/nano/Assistance;Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 242
    :cond_7
    invoke-static {v4}, Lcom/google/android/calendar/task/TaskAssistanceUtils;->hasViewUrlAction(Lcom/google/personalization/assist/annotate/api/nano/Assistance;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 243
    new-instance v5, Lcom/google/android/calendar/task/assist/UrlTaskAssist;

    invoke-direct {v5, v4, v3}, Lcom/google/android/calendar/task/assist/UrlTaskAssist;-><init>(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 244
    :cond_8
    invoke-static {v4, v3}, Lcom/google/android/calendar/task/TaskAssistanceUtils;->hasWeatherAssistance(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 245
    new-instance v5, Lcom/google/android/calendar/task/assist/WeatherTaskAssist;

    invoke-direct {v5, v4, v3}, Lcom/google/android/calendar/task/assist/WeatherTaskAssist;-><init>(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 246
    :cond_9
    invoke-static {v4, v3}, Lcom/google/android/calendar/task/TaskAssistanceUtils;->hasYoutubeAction(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 247
    new-instance v5, Lcom/google/android/calendar/task/assist/WatchVideoTaskAssist;

    invoke-direct {v5, v4, v3}, Lcom/google/android/calendar/task/assist/WatchVideoTaskAssist;-><init>(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 248
    :cond_a
    invoke-static {v4, v3}, Lcom/google/android/calendar/task/TaskAssistanceUtils;->hasBillAssistance(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 249
    new-instance v5, Lcom/google/android/calendar/task/assist/PayBillTaskAssist;

    invoke-direct {v5, v4, v3}, Lcom/google/android/calendar/task/assist/PayBillTaskAssist;-><init>(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_b
    move-object v0, v1

    .line 254
    :goto_2
    return-object v0

    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2
.end method

.method public static getAssistance([B)Lcom/google/android/calendar/task/nano/CalendarAssistance;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 157
    if-nez p0, :cond_0

    .line 165
    :goto_0
    return-object v0

    .line 162
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/google/android/calendar/task/nano/CalendarAssistance;->parseFrom([B)Lcom/google/android/calendar/task/nano/CalendarAssistance;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v1

    .line 164
    sget-object v2, Lcom/google/android/calendar/task/TaskAssistanceUtils;->TAG:Ljava/lang/String;

    const-string v3, "Unable to parse assistance protobuf"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static getFlairForGrammarRuleType(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 258
    sget-object v0, Lcom/google/android/calendar/task/TaskAssistanceUtils;->grammarRuleTypeToFlair:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    sget-object v0, Lcom/google/android/calendar/task/TaskAssistanceUtils;->grammarRuleTypeToFlair:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 258
    :goto_0
    return-object v0

    .line 259
    :cond_0
    const-string v0, "default"

    goto :goto_0
.end method

.method public static getProtoBytes(Lcom/google/android/calendar/task/edit/TimelyMutableTask;)[B
    .locals 2

    .prologue
    .line 178
    new-instance v1, Lcom/google/android/calendar/task/nano/CalendarAssistance;

    invoke-direct {v1}, Lcom/google/android/calendar/task/nano/CalendarAssistance;-><init>()V

    .line 179
    invoke-virtual {p0}, Lcom/google/android/calendar/task/edit/TimelyMutableTask;->mutableAnnotationHint()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/google/android/calendar/task/nano/CalendarAssistance;->taskAnnotationHint:Ljava/lang/String;

    .line 180
    invoke-virtual {p0}, Lcom/google/android/calendar/task/edit/TimelyMutableTask;->mutableTaskAssistance()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;

    iput-object v0, v1, Lcom/google/android/calendar/task/nano/CalendarAssistance;->taskAssistance:Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;

    .line 181
    invoke-static {v1}, Lcom/google/android/calendar/task/nano/CalendarAssistance;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getTaskAssistance([B)Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;
    .locals 1

    .prologue
    .line 170
    invoke-static {p0}, Lcom/google/android/calendar/task/TaskAssistanceUtils;->getAssistance([B)Lcom/google/android/calendar/task/nano/CalendarAssistance;

    move-result-object v0

    .line 171
    if-nez v0, :cond_0

    .line 172
    const/4 v0, 0x0

    .line 174
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/google/android/calendar/task/nano/CalendarAssistance;->taskAssistance:Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;

    goto :goto_0
.end method

.method public static hasBillAssistance(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 140
    const/16 v1, 0x17

    if-eq p1, v1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->billAssistance:Lcom/google/personalization/assist/annotate/api/nano/BillAssistance;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->billAssistance:Lcom/google/personalization/assist/annotate/api/nano/BillAssistance;

    iget-object v1, v1, Lcom/google/personalization/assist/annotate/api/nano/BillAssistance;->payText:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->billAssistance:Lcom/google/personalization/assist/annotate/api/nano/BillAssistance;

    iget-object v1, v1, Lcom/google/personalization/assist/annotate/api/nano/BillAssistance;->payUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static hasCalendarAssistance(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 62
    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->calendarAssistance:Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->calendarAssistance:Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;

    iget-object v1, v1, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;->title:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->calendarAssistance:Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;

    iget-object v1, v1, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;->urlText:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static hasCallAction(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 71
    if-eq p1, v0, :cond_0

    .line 74
    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->callAction:Lcom/google/personalization/assist/annotate/api/nano/CallAction;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->callAction:Lcom/google/personalization/assist/annotate/api/nano/CallAction;

    iget-object v2, v2, Lcom/google/personalization/assist/annotate/api/nano/CallAction;->phoneNumber:[Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    array-length v2, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->callAction:Lcom/google/personalization/assist/annotate/api/nano/CallAction;

    iget-object v2, v2, Lcom/google/personalization/assist/annotate/api/nano/CallAction;->phoneNumber:[Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static hasCallOrganizationAction(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 80
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->organizationAssistance:Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->organizationAssistance:Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;

    iget-object v1, v1, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->phoneNumber:Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    if-nez v1, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v0

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->organizationAssistance:Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;

    iget-object v1, v1, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->phoneNumber:Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    iget-object v1, v1, Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;->phoneNumber:Ljava/lang/String;

    .line 86
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static hasDeadlineAssistance(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 99
    const/16 v1, 0x26

    if-eq p1, v1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->deadlineAssistance:Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->deadlineAssistance:Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;

    iget-object v1, v1, Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;->eventTime:Lcom/google/personalization/assist/annotate/api/nano/EventTime;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->deadlineAssistance:Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;

    iget-object v1, v1, Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;->eventTime:Lcom/google/personalization/assist/annotate/api/nano/EventTime;

    iget-object v1, v1, Lcom/google/personalization/assist/annotate/api/nano/EventTime;->startTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->deadlineAssistance:Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;

    iget-object v1, v1, Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;->eventTime:Lcom/google/personalization/assist/annotate/api/nano/EventTime;

    iget-object v1, v1, Lcom/google/personalization/assist/annotate/api/nano/EventTime;->endTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static hasEmailAction(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 90
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->emailAction:Lcom/google/personalization/assist/annotate/api/nano/EmailAction;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->emailAction:Lcom/google/personalization/assist/annotate/api/nano/EmailAction;

    iget-object v1, v1, Lcom/google/personalization/assist/annotate/api/nano/EmailAction;->emailAddress:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->emailAction:Lcom/google/personalization/assist/annotate/api/nano/EmailAction;

    iget-object v1, v1, Lcom/google/personalization/assist/annotate/api/nano/EmailAction;->emailAddress:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static hasFinanceAssistance(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 109
    const/16 v1, 0x35

    if-eq p1, v1, :cond_1

    const/16 v1, 0x36

    if-eq p1, v1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->financeAssistance:Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->financeAssistance:Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;

    iget-object v1, v1, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->financeUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->financeAssistance:Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;

    iget-object v1, v1, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->actionText:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static hasReturnProductAssistance(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 118
    const/16 v1, 0x12

    if-eq p1, v1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->returnProductAssistance:Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static hasViewUrlAction(Lcom/google/personalization/assist/annotate/api/nano/Assistance;)Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->viewUrlAction:Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->viewUrlAction:Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->viewUrlAction:Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasWeatherAssistance(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 131
    const/16 v1, 0x1b

    if-eq p1, v1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->weatherAssistance:Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->weatherAssistance:Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;

    iget-object v1, v1, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->forecastUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->weatherAssistance:Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;

    iget-object v1, v1, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->forecastText:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static hasYoutubeAction(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 149
    const/16 v1, 0x23

    if-eq p1, v1, :cond_1

    .line 152
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->watchYoutubeAction:Lcom/google/personalization/assist/annotate/api/nano/WatchYoutubeAction;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->watchYoutubeAction:Lcom/google/personalization/assist/annotate/api/nano/WatchYoutubeAction;

    iget-object v1, v1, Lcom/google/personalization/assist/annotate/api/nano/WatchYoutubeAction;->videoUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
