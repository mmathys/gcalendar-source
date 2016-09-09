.class public Lcom/google/android/calendar/HabitInstancesUtil;
.super Ljava/lang/Object;
.source "HabitInstancesUtil.java"


# direct methods
.method public static getSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/calendar/HabitInstancesUtil;->getSelection(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSelection(Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    if-eqz p0, :cond_0

    const-string v0, "(sync_data8=? OR sync_data8 LIKE ?)"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "sync_data8=?"

    goto :goto_0
.end method

.method public static getSelectionArgs(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/calendar/HabitInstancesUtil;->getSelectionArgs(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSelectionArgs(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 48
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    aput-object p0, v0, v1

    const-string v1, ","

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

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

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    :goto_0
    return-object v0

    .line 49
    :cond_0
    new-array v0, v5, [Ljava/lang/String;

    aput-object p0, v0, v1

    goto :goto_0
.end method
