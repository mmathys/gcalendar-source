.class public Lcom/google/android/calendar/api/HabitIdTypeUtil;
.super Lcom/google/android/calendar/HabitInstancesUtil;
.source "HabitIdTypeUtil.java"


# direct methods
.method public static createHabitIdTypeStringFromApiType(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 55
    invoke-static {p1}, Lcom/google/android/calendar/api/HabitStoreUtils;->apiTypeToProtoType(I)I

    move-result v0

    .line 56
    const-string v1, ","

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xb

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createHabitIdTypeStringFromServerType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    if-nez p1, :cond_0

    .line 66
    :goto_0
    return-object p0

    .line 67
    :cond_0
    invoke-static {p1}, Lcom/google/android/calendar/api/HabitSyncUtils;->serverTypeToApiType(Ljava/lang/String;)I

    move-result v0

    .line 66
    invoke-static {p0, v0}, Lcom/google/android/calendar/api/HabitIdTypeUtil;->createHabitIdTypeStringFromApiType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static parseHabitId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    invoke-static {p0}, Lcom/google/android/calendar/api/HabitIdTypeUtil;->parseHabitIdAndType(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 46
    :cond_0
    const/4 v0, 0x0

    .line 48
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public static parseHabitIdAndType(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 22
    if-nez p0, :cond_1

    .line 23
    const/4 v0, 0x0

    .line 32
    :cond_0
    :goto_0
    return-object v0

    .line 25
    :cond_1
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 26
    array-length v1, v0

    if-le v1, v2, :cond_0

    .line 28
    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 29
    invoke-static {v1}, Lcom/google/android/calendar/api/HabitStoreUtils;->protoTypeToApiType(I)I

    move-result v1

    .line 30
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_0
.end method
