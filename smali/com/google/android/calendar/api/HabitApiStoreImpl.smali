.class public Lcom/google/android/calendar/api/HabitApiStoreImpl;
.super Ljava/lang/Object;
.source "HabitApiStoreImpl.java"

# interfaces
.implements Lcom/google/android/calendar/api/CrudApi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/calendar/api/CrudApi",
        "<",
        "Lcom/google/android/calendar/api/Habit;",
        "Lcom/google/android/calendar/api/HabitModifications;",
        "Lcom/google/android/calendar/api/HabitDescriptor;",
        "Lcom/google/android/calendar/api/HabitFilterOptions;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static calculateEventValuesToPropagate(Lcom/google/android/calendar/api/HabitModifications;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/calendar/api/HabitApiStoreImpl;->calculateEventValuesToPropagate(Lcom/google/android/calendar/api/HabitModifications;Z)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method static calculateEventValuesToPropagate(Lcom/google/android/calendar/api/HabitModifications;Z)Landroid/content/ContentValues;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 294
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 295
    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitModifications;->isSummaryModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    const-string v0, "title"

    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitModifications;->getSummary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_0
    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitModifications;->isVisibilityModified()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    const-string v0, "accessLevel"

    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitModifications;->getVisibility()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/calendar/api/HabitApiStoreImpl;->convertToEventVisibility(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 303
    :cond_1
    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitModifications;->isColorOverrideModified()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 304
    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitModifications;->getColorOverride()Lcom/google/android/calendar/api/ColorDescriptor;

    move-result-object v0

    .line 306
    if-nez v0, :cond_4

    .line 310
    const-string v3, "eventColor"

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :goto_0
    const-string v0, "eventColor_index"

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitModifications;->isTypeModified()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 322
    const-string v0, "sync_data8"

    .line 324
    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitModifications;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/calendar/api/HabitDescriptor;->habitId:Ljava/lang/String;

    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitModifications;->getType()I

    move-result v3

    .line 323
    invoke-static {v1, v3}, Lcom/google/android/calendar/api/HabitIdTypeUtil;->createHabitIdTypeStringFromApiType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 322
    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :cond_3
    return-object v2

    .line 313
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/calendar/api/ColorDescriptor;->getColorId()Ljava/lang/String;

    move-result-object v1

    .line 316
    invoke-static {v1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    const-string v3, "Null or empty color key in color descriptor"

    .line 315
    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    goto :goto_0

    .line 316
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static convertToEventVisibility(I)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 331
    packed-switch p0, :pswitch_data_0

    .line 339
    :goto_0
    :pswitch_0
    return v0

    .line 335
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 337
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 331
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getSelectionArguments(Lcom/google/android/calendar/api/HabitFilterOptions;)[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 136
    if-nez p1, :cond_1

    move-object v0, v4

    .line 173
    :cond_0
    :goto_0
    return-object v0

    .line 140
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/calendar/api/HabitFilterOptions;->getIds()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 141
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/calendar/api/HabitFilterOptions;->getAccountName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    move v3, v1

    .line 142
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/calendar/api/HabitFilterOptions;->getCalendarId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    move v6, v1

    .line 144
    :goto_3
    if-eqz v3, :cond_5

    move v5, v1

    :goto_4
    if-eqz v6, :cond_6

    .line 145
    :goto_5
    add-int/2addr v5, v1

    if-eqz v0, :cond_7

    .line 146
    invoke-virtual {p1}, Lcom/google/android/calendar/api/HabitFilterOptions;->getIds()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    :goto_6
    add-int/2addr v1, v5

    .line 148
    if-nez v1, :cond_8

    move-object v0, v4

    .line 149
    goto :goto_0

    :cond_2
    move v0, v2

    .line 140
    goto :goto_1

    :cond_3
    move v3, v2

    .line 141
    goto :goto_2

    :cond_4
    move v6, v2

    .line 142
    goto :goto_3

    :cond_5
    move v5, v2

    .line 144
    goto :goto_4

    :cond_6
    move v1, v2

    .line 145
    goto :goto_5

    :cond_7
    move v1, v2

    .line 146
    goto :goto_6

    .line 150
    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/google/android/calendar/api/HabitFilterOptions;->getIds()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-ne v4, v1, :cond_9

    .line 151
    invoke-virtual {p1}, Lcom/google/android/calendar/api/HabitFilterOptions;->getIds()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 157
    :cond_9
    if-eqz v0, :cond_a

    .line 158
    invoke-virtual {p1}, Lcom/google/android/calendar/api/HabitFilterOptions;->getIds()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Lcom/google/android/calendar/api/HabitFilterOptions;->getIds()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    .line 165
    :goto_7
    if-eqz v3, :cond_b

    .line 166
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p1}, Lcom/google/android/calendar/api/HabitFilterOptions;->getAccountName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 169
    :goto_8
    if-eqz v6, :cond_0

    .line 170
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1}, Lcom/google/android/calendar/api/HabitFilterOptions;->getCalendarId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0

    .line 161
    :cond_a
    new-array v0, v1, [Ljava/lang/String;

    goto :goto_7

    :cond_b
    move v1, v2

    goto :goto_8
.end method

.method private getSelectionString(Lcom/google/android/calendar/api/HabitFilterOptions;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 178
    if-nez p1, :cond_0

    .line 179
    sget-object p1, Lcom/google/android/calendar/api/HabitFilterOptions;->DEFAULT:Lcom/google/android/calendar/api/HabitFilterOptions;

    .line 181
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/calendar/api/HabitFilterOptions;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    const/4 v0, 0x0

    .line 238
    :goto_0
    return-object v0

    .line 185
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    invoke-virtual {p1}, Lcom/google/android/calendar/api/HabitFilterOptions;->getMode()I

    move-result v0

    if-nez v0, :cond_9

    const-string v0, " AND "

    .line 189
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/calendar/api/HabitFilterOptions;->getDirty()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 190
    const-string v1, "dirty"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 191
    invoke-virtual {p1}, Lcom/google/android/calendar/api/HabitFilterOptions;->getDirty()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "=1"

    :goto_2
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/calendar/api/HabitFilterOptions;->getLastSynced()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 195
    const-string v1, "lastSynced"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 196
    invoke-virtual {p1}, Lcom/google/android/calendar/api/HabitFilterOptions;->getLastSynced()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "=1"

    :goto_3
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/calendar/api/HabitFilterOptions;->getDeletionStatus()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 200
    const-string v1, "deletionStatus"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "="

    .line 201
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/calendar/api/HabitFilterOptions;->getDeletionStatus()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/calendar/api/HabitFilterOptions;->getActiveAfter()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 205
    const-string v1, "("

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "untilMillisUtc"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "<=0 OR "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "untilMillisUtc"

    .line 206
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ">"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 207
    invoke-virtual {p1}, Lcom/google/android/calendar/api/HabitFilterOptions;->getActiveAfter()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/calendar/api/HabitFilterOptions;->getIds()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 211
    invoke-virtual {p1}, Lcom/google/android/calendar/api/HabitFilterOptions;->getIds()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_c

    move v1, v2

    :goto_4
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 212
    const-string v1, "_sync_id"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {p1}, Lcom/google/android/calendar/api/HabitFilterOptions;->getIds()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ne v1, v2, :cond_d

    .line 214
    const-string v1, "=?"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    :goto_5
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/calendar/api/HabitFilterOptions;->getAccountName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 227
    invoke-virtual {p1}, Lcom/google/android/calendar/api/HabitFilterOptions;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    move v1, v2

    :goto_6
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 228
    const-string v1, "account"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "=?"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/calendar/api/HabitFilterOptions;->getCalendarId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 232
    invoke-virtual {p1}, Lcom/google/android/calendar/api/HabitFilterOptions;->getCalendarId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    :goto_7
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 233
    const-string v1, "calendar"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    :cond_8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, v1, v0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 187
    :cond_9
    const-string v0, " OR "

    goto/16 :goto_1

    .line 191
    :cond_a
    const-string v1, "=0"

    goto/16 :goto_2

    .line 196
    :cond_b
    const-string v1, "=0"

    goto/16 :goto_3

    :cond_c
    move v1, v3

    .line 211
    goto :goto_4

    .line 216
    :cond_d
    const-string v1, " IN ("

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v3

    .line 217
    :goto_8
    invoke-virtual {p1}, Lcom/google/android/calendar/api/HabitFilterOptions;->getIds()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ge v1, v5, :cond_e

    .line 218
    const-string v5, "?,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 220
    :cond_e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 221
    const-string v1, ")"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_f
    move v1, v3

    .line 227
    goto :goto_6

    :cond_10
    move v2, v3

    .line 232
    goto :goto_7
.end method

.method static isDeleteAllFollowingChange(Lcom/google/android/calendar/api/HabitModifications;)Z
    .locals 4

    .prologue
    .line 280
    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitModifications;->getContractModifications()Lcom/google/android/calendar/api/HabitContractModifications;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitContractModifications;->isUntilMillisUtcModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitModifications;->getContractModifications()Lcom/google/android/calendar/api/HabitContractModifications;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitContractModifications;->getUntilMillisUtc()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 280
    :goto_0
    return v0

    .line 281
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private propagateChangesToInstances(Lcom/google/android/calendar/api/HabitModifications;)V
    .locals 4

    .prologue
    .line 269
    invoke-static {p1}, Lcom/google/android/calendar/api/HabitApiStoreImpl;->isDeleteAllFollowingChange(Lcom/google/android/calendar/api/HabitModifications;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    invoke-static {}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->getInstance()Lcom/google/android/syncadapters/calendar/timely/GrooveStore;

    move-result-object v0

    .line 271
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitModifications;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v1

    .line 272
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitModifications;->getContract()Lcom/google/android/calendar/api/HabitContract;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/calendar/api/HabitContract;->getUntilMillisUtc()J

    move-result-wide v2

    .line 270
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->deleteHabitInstancesAfter(Lcom/google/android/calendar/api/HabitDescriptor;J)I

    .line 275
    :cond_0
    invoke-static {}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->getInstance()Lcom/google/android/syncadapters/calendar/timely/GrooveStore;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitModifications;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v1

    .line 276
    invoke-static {p1}, Lcom/google/android/calendar/api/HabitApiStoreImpl;->calculateEventValuesToPropagate(Lcom/google/android/calendar/api/HabitModifications;)Landroid/content/ContentValues;

    move-result-object v2

    .line 275
    invoke-virtual {v0, v1, v2}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->updateHabitInstances(Lcom/google/android/calendar/api/HabitDescriptor;Landroid/content/ContentValues;)I

    .line 277
    return-void
.end method

.method private requestSyncUp(Lcom/google/android/calendar/api/HabitDescriptor;ZI)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 244
    new-instance v1, Landroid/os/Bundle;

    if-eqz p2, :cond_3

    const/4 v0, 0x5

    :goto_0
    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 245
    const-string v0, "upload"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 246
    const-string v0, "feed_internal"

    iget-object v2, p1, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {v2}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getCalendarId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v0, "groove_operation"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 248
    const-string v0, "only_groove"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 249
    if-eqz p2, :cond_0

    .line 250
    const-string v0, "upsync_tracking_id"

    iget-object v2, p1, Lcom/google/android/calendar/api/HabitDescriptor;->habitId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_0
    if-ne p3, v3, :cond_2

    .line 254
    sget-object v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->HABIT_CREATE_SYNC_USE_EXPEDITE:Lcom/google/android/calendar/experiments/Experiment;

    .line 255
    invoke-static {}, Lcom/google/android/calendar/api/CalendarApi;->getApiAppContext()Landroid/content/Context;

    move-result-object v2

    .line 254
    invoke-virtual {v0, v2}, Lcom/google/android/calendar/experiments/Experiment;->isActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    const-string v0, "expedited"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 258
    :cond_1
    sget-object v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->HABIT_CREATE_SYNC_IGNORE_BACKOFF:Lcom/google/android/calendar/experiments/Experiment;

    .line 259
    invoke-static {}, Lcom/google/android/calendar/api/CalendarApi;->getApiAppContext()Landroid/content/Context;

    move-result-object v2

    .line 258
    invoke-virtual {v0, v2}, Lcom/google/android/calendar/experiments/Experiment;->isActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    const-string v0, "ignore_backoff"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 263
    :cond_2
    iget-object v0, p1, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    const-string v2, "com.android.calendar"

    invoke-static {v0, v2, v1}, Lcom/google/android/calendar/SyncUtil;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 264
    return-void

    .line 244
    :cond_3
    const/4 v0, 0x4

    goto :goto_0
.end method


# virtual methods
.method public count(Lcom/google/android/calendar/api/HabitFilterOptions;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/HabitApiStoreImpl;->getSelectionString(Lcom/google/android/calendar/api/HabitFilterOptions;)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/HabitApiStoreImpl;->getSelectionArguments(Lcom/google/android/calendar/api/HabitFilterOptions;)[Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-static {}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->getInstance()Lcom/google/android/syncadapters/calendar/timely/GrooveStore;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->countHabits(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic count(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    check-cast p1, Lcom/google/android/calendar/api/HabitFilterOptions;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/api/HabitApiStoreImpl;->count(Lcom/google/android/calendar/api/HabitFilterOptions;)I

    move-result v0

    return v0
.end method

.method public create(Lcom/google/android/calendar/api/HabitModifications;)Lcom/google/android/calendar/api/HabitDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 34
    invoke-virtual {p0, p1, v1}, Lcom/google/android/calendar/api/HabitApiStoreImpl;->create(Lcom/google/android/calendar/api/HabitModifications;Z)Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v0

    .line 35
    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/calendar/api/HabitApiStoreImpl;->requestSyncUp(Lcom/google/android/calendar/api/HabitDescriptor;ZI)V

    .line 37
    return-object v0
.end method

.method public create(Lcom/google/android/calendar/api/HabitModifications;Z)Lcom/google/android/calendar/api/HabitDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->getInstance()Lcom/google/android/syncadapters/calendar/timely/GrooveStore;

    move-result-object v0

    .line 44
    invoke-static {p1}, Lcom/google/android/calendar/api/HabitStoreUtils;->newHabitToEntity(Lcom/google/android/calendar/api/HabitModifications;)Landroid/content/Entity;

    move-result-object v1

    .line 45
    invoke-virtual {v0, v1, p2}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->insertHabit(Landroid/content/Entity;Z)J

    .line 46
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitModifications;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    check-cast p1, Lcom/google/android/calendar/api/HabitModifications;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/api/HabitApiStoreImpl;->create(Lcom/google/android/calendar/api/HabitModifications;)Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic create(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    check-cast p1, Lcom/google/android/calendar/api/HabitModifications;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/api/HabitApiStoreImpl;->create(Lcom/google/android/calendar/api/HabitModifications;Z)Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public delete(Lcom/google/android/calendar/api/HabitDescriptor;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/calendar/api/HabitApiStoreImpl;->delete(Lcom/google/android/calendar/api/HabitDescriptor;Z)Z

    move-result v0

    .line 97
    if-eqz v0, :cond_0

    .line 98
    invoke-direct {p0, p1, v1, v1}, Lcom/google/android/calendar/api/HabitApiStoreImpl;->requestSyncUp(Lcom/google/android/calendar/api/HabitDescriptor;ZI)V

    .line 101
    :cond_0
    return v0
.end method

.method public delete(Lcom/google/android/calendar/api/HabitDescriptor;Z)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 106
    invoke-static {}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->getInstance()Lcom/google/android/syncadapters/calendar/timely/GrooveStore;

    move-result-object v2

    .line 107
    if-eqz p2, :cond_2

    .line 108
    invoke-static {p1}, Lcom/google/android/calendar/api/HabitStoreUtils;->createLocalDeletion(Lcom/google/android/calendar/api/HabitDescriptor;)Landroid/content/Entity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->updateHabit(Landroid/content/Entity;)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 108
    goto :goto_0

    .line 110
    :cond_2
    iget-object v3, p1, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {v3}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    .line 111
    invoke-virtual {v4}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getCalendarId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/calendar/api/HabitDescriptor;->habitId:Ljava/lang/String;

    .line 110
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->deleteHabit(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic delete(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    check-cast p1, Lcom/google/android/calendar/api/HabitDescriptor;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/api/HabitApiStoreImpl;->delete(Lcom/google/android/calendar/api/HabitDescriptor;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic delete(Ljava/lang/Object;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    check-cast p1, Lcom/google/android/calendar/api/HabitDescriptor;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/api/HabitApiStoreImpl;->delete(Lcom/google/android/calendar/api/HabitDescriptor;Z)Z

    move-result v0

    return v0
.end method

.method public list(Lcom/google/android/calendar/api/HabitFilterOptions;)[Lcom/google/android/calendar/api/Habit;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/HabitApiStoreImpl;->getSelectionString(Lcom/google/android/calendar/api/HabitFilterOptions;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/HabitApiStoreImpl;->getSelectionArguments(Lcom/google/android/calendar/api/HabitFilterOptions;)[Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-static {}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->getInstance()Lcom/google/android/syncadapters/calendar/timely/GrooveStore;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->queryHabits(Ljava/lang/String;[Ljava/lang/String;)[Landroid/content/Entity;

    move-result-object v1

    .line 120
    array-length v0, v1

    new-array v2, v0, [Lcom/google/android/calendar/api/Habit;

    .line 121
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 122
    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/google/android/calendar/api/HabitStoreUtils;->entityToHabit(Landroid/content/Entity;)Lcom/google/android/calendar/api/Habit;

    move-result-object v3

    aput-object v3, v2, v0

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_0
    return-object v2
.end method

.method public bridge synthetic list(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    check-cast p1, Lcom/google/android/calendar/api/HabitFilterOptions;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/api/HabitApiStoreImpl;->list(Lcom/google/android/calendar/api/HabitFilterOptions;)[Lcom/google/android/calendar/api/Habit;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/google/android/calendar/api/HabitDescriptor;)Lcom/google/android/calendar/api/Habit;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->getInstance()Lcom/google/android/syncadapters/calendar/timely/GrooveStore;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    .line 53
    invoke-virtual {v1}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {v2}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getCalendarId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/calendar/api/HabitDescriptor;->habitId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->getHabit(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Entity;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/calendar/api/HabitStoreUtils;->entityToHabit(Landroid/content/Entity;)Lcom/google/android/calendar/api/Habit;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic read(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    check-cast p1, Lcom/google/android/calendar/api/HabitDescriptor;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/api/HabitApiStoreImpl;->read(Lcom/google/android/calendar/api/HabitDescriptor;)Lcom/google/android/calendar/api/Habit;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/google/android/calendar/api/HabitModifications;Ljava/lang/Void;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 60
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitModifications;->isModified()Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    :goto_0
    return v0

    .line 65
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/calendar/api/HabitApiStoreImpl;->update(Lcom/google/android/calendar/api/HabitModifications;Ljava/lang/Void;Z)Z

    move-result v1

    .line 66
    if-eqz v1, :cond_1

    .line 67
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitModifications;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3}, Lcom/google/android/calendar/api/HabitApiStoreImpl;->requestSyncUp(Lcom/google/android/calendar/api/HabitDescriptor;ZI)V

    .line 69
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/HabitApiStoreImpl;->propagateChangesToInstances(Lcom/google/android/calendar/api/HabitModifications;)V

    :cond_1
    move v0, v1

    .line 71
    goto :goto_0
.end method

.method public update(Lcom/google/android/calendar/api/HabitModifications;Ljava/lang/Void;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 77
    invoke-static {}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->getInstance()Lcom/google/android/syncadapters/calendar/timely/GrooveStore;

    move-result-object v2

    .line 78
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitModifications;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v1

    .line 79
    invoke-virtual {v2}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->beginTransaction()V

    .line 81
    :try_start_0
    iget-object v3, v1, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    .line 82
    invoke-virtual {v3}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {v4}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getCalendarId()Ljava/lang/String;

    move-result-object v4

    iget-object v1, v1, Lcom/google/android/calendar/api/HabitDescriptor;->habitId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->getHabit(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Entity;

    move-result-object v1

    .line 83
    invoke-virtual {v1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v1

    const-string v3, "data"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 84
    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 85
    :goto_0
    invoke-static {p1, v1}, Lcom/google/android/calendar/api/HabitStoreUtils;->modificationToEntity(Lcom/google/android/calendar/api/HabitModifications;Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;)Landroid/content/Entity;

    move-result-object v1

    .line 86
    invoke-virtual {v2, v1, p3}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->updateHabit(Landroid/content/Entity;Z)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 87
    :goto_1
    invoke-virtual {v2}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-virtual {v2}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->endTransaction()V

    .line 88
    return v0

    .line 84
    :cond_0
    :try_start_1
    invoke-static {v1}, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->parseFrom([B)Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 86
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 90
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->endTransaction()V

    throw v0
.end method

.method public bridge synthetic update(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    check-cast p1, Lcom/google/android/calendar/api/HabitModifications;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/api/HabitApiStoreImpl;->update(Lcom/google/android/calendar/api/HabitModifications;Ljava/lang/Void;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic update(Ljava/lang/Object;Ljava/lang/Object;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    check-cast p1, Lcom/google/android/calendar/api/HabitModifications;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/calendar/api/HabitApiStoreImpl;->update(Lcom/google/android/calendar/api/HabitModifications;Ljava/lang/Void;Z)Z

    move-result v0

    return v0
.end method
