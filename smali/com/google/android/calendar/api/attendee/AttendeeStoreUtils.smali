.class public Lcom/google/android/calendar/api/attendee/AttendeeStoreUtils;
.super Ljava/lang/Object;
.source "AttendeeStoreUtils.java"


# direct methods
.method public static addDeleteAttendeeOperations(JLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 98
    sget-object v1, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    .line 99
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "event_id=?"

    .line 100
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 102
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method

.method public static addInsertAttendeeOperationsForEventCreate(ILcom/google/android/calendar/api/EventModifications;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/calendar/api/EventModifications;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    int-to-long v0, p0

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Lcom/google/android/calendar/api/attendee/AttendeeStoreUtils;->createInsertOperations(Lcom/google/android/calendar/api/EventModifications;Ljava/util/List;JZ)V

    .line 46
    return-void
.end method

.method public static addInsertAttendeeOperationsForEventUpdate(JLcom/google/android/calendar/api/EventModifications;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/calendar/api/EventModifications;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    const/4 v0, 0x1

    invoke-static {p2, p3, p0, p1, v0}, Lcom/google/android/calendar/api/attendee/AttendeeStoreUtils;->createInsertOperations(Lcom/google/android/calendar/api/EventModifications;Ljava/util/List;JZ)V

    .line 36
    return-void
.end method

.method public static apiTypeAndRoleToProviderType(II)I
    .locals 3

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x2

    const/4 v2, 0x1

    .line 223
    if-ne p1, v0, :cond_0

    .line 224
    if-eq p0, v2, :cond_2

    .line 225
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "role=OPTIONAL requires type=INDIVIDUAL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_0
    if-ne p0, v1, :cond_3

    .line 230
    if-eq p1, v2, :cond_1

    .line 231
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "type=RESOURCE requires role=REQUIRED"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v1

    .line 235
    :cond_2
    :goto_0
    return v0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method private static createInsertOperations(Lcom/google/android/calendar/api/EventModifications;Ljava/util/List;JZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/calendar/api/EventModifications;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;JZ)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 66
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-interface {p0}, Lcom/google/android/calendar/api/EventModifications;->getAttendees()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/attendee/Attendee;

    .line 70
    iget-object v2, v0, Lcom/google/android/calendar/api/attendee/Attendee;->attendeeDescriptor:Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;

    .line 71
    if-nez p4, :cond_0

    iget-object v3, v2, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;->contactId:Lcom/google/android/calendar/api/attendee/ContactId;

    if-eqz v3, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot insert attendees with a contactId."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    sget-object v3, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 75
    if-eqz p4, :cond_1

    .line 76
    const-string v4, "event_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 80
    :goto_1
    const-string v4, "attendeeEmail"

    iget-object v2, v2, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;->email:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v4, "attendeeName"

    iget-object v5, v0, Lcom/google/android/calendar/api/attendee/Attendee;->displayName:Ljava/lang/String;

    .line 81
    invoke-virtual {v2, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v4, "attendeeType"

    iget v5, v0, Lcom/google/android/calendar/api/attendee/Attendee;->type:I

    iget v6, v0, Lcom/google/android/calendar/api/attendee/Attendee;->role:I

    .line 83
    invoke-static {v5, v6}, Lcom/google/android/calendar/api/attendee/AttendeeStoreUtils;->apiTypeAndRoleToProviderType(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 82
    invoke-virtual {v2, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v4, "attendeeStatus"

    iget-object v0, v0, Lcom/google/android/calendar/api/attendee/Attendee;->response:Lcom/google/android/calendar/api/attendee/Response;

    iget v0, v0, Lcom/google/android/calendar/api/attendee/Response;->status:I

    .line 84
    invoke-static {v0}, Lcom/google/android/calendar/api/attendee/AttendeeStoreUtils;->toProviderResponseStatus(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v2, "attendeeIdentity"

    .line 85
    invoke-virtual {v0, v2, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v2, "attendeeIdNamespace"

    .line 86
    invoke-virtual {v0, v2, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 87
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    :cond_1
    const-string v4, "event_id"

    long-to-int v5, p2

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1

    .line 89
    :cond_2
    return-void
.end method

.method private static emailsEquivalent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 156
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 157
    :cond_0
    const/4 v0, 0x0

    .line 159
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static loadAttendees(J)[Lcom/google/android/calendar/api/attendee/Attendee;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    const/4 v6, 0x0

    .line 108
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 110
    :try_start_0
    invoke-static {}, Lcom/google/android/calendar/api/CalendarApi;->getApiContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/calendar/api/LoadDetailsConstants;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    const-string v3, "event_id=?"

    const-string v5, "attendeeName ASC, attendeeEmail ASC"

    .line 111
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 116
    if-nez v1, :cond_1

    .line 118
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Error while reading attendees data from the provider"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    :catchall_0
    move-exception v0

    :goto_0
    if-eqz v1, :cond_0

    .line 128
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 120
    :cond_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 121
    if-lez v0, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 123
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Error while reading attendee data: invalid cursor"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_2
    invoke-static {v1}, Lcom/google/android/calendar/api/attendee/AttendeeStoreUtils;->toApiAttendees(Landroid/database/Cursor;)[Lcom/google/android/calendar/api/attendee/Attendee;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 127
    if-eqz v1, :cond_3

    .line 128
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 125
    :cond_3
    return-object v0

    .line 127
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_0
.end method

.method public static populateOrganizerDataFromAttendees(Ljava/lang/String;[Lcom/google/android/calendar/api/attendee/Attendee;)Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;
    .locals 4

    .prologue
    .line 140
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 143
    iget-object v3, v2, Lcom/google/android/calendar/api/attendee/Attendee;->attendeeDescriptor:Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;

    iget-object v3, v3, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;->email:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/google/android/calendar/api/attendee/AttendeeStoreUtils;->emailsEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    iget-object v0, v2, Lcom/google/android/calendar/api/attendee/Attendee;->attendeeDescriptor:Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;

    .line 147
    :goto_1
    return-object v0

    .line 142
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_1
    new-instance v0, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;

    invoke-direct {v0, p0}, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static providerTypeToApiRole(I)I
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 212
    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static providerTypeToApiType(I)I
    .locals 1

    .prologue
    const/4 v0, 0x3

    .line 218
    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static toApiAttendeeDescriptor(Landroid/database/Cursor;)Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 186
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 187
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    const/4 v0, 0x5

    .line 189
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 190
    const/4 v0, 0x6

    .line 191
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 193
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;

    new-instance v6, Lcom/google/android/calendar/api/attendee/ContactId;

    invoke-direct {v6, v4, v5}, Lcom/google/android/calendar/api/attendee/ContactId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v2, v3, v1, v6}, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;-><init>(JLjava/lang/String;Lcom/google/android/calendar/api/attendee/ContactId;)V

    .line 206
    :goto_0
    return-object v0

    .line 195
    :cond_0
    const-string v0, "@profile.calendar.google.com"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    new-instance v0, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;

    new-instance v4, Lcom/google/android/calendar/api/attendee/ContactId;

    const-string v5, "@profile.calendar.google.com"

    .line 200
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.google"

    invoke-direct {v4, v5, v6}, Lcom/google/android/calendar/api/attendee/ContactId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;-><init>(JLjava/lang/String;Lcom/google/android/calendar/api/attendee/ContactId;)V

    goto :goto_0

    .line 204
    :cond_1
    new-instance v0, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;-><init>(JLjava/lang/String;)V

    goto :goto_0
.end method

.method static toApiAttendees(Landroid/database/Cursor;)[Lcom/google/android/calendar/api/attendee/Attendee;
    .locals 10

    .prologue
    .line 164
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 166
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v8, v0, [Lcom/google/android/calendar/api/attendee/Attendee;

    .line 167
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_0

    .line 168
    invoke-static {p0}, Lcom/google/android/calendar/api/attendee/AttendeeStoreUtils;->toApiAttendeeDescriptor(Landroid/database/Cursor;)Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;

    move-result-object v1

    .line 170
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 171
    const/4 v0, 0x7

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 172
    const/4 v0, 0x4

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 173
    new-instance v0, Lcom/google/android/calendar/api/attendee/Attendee;

    .line 176
    invoke-static {v4}, Lcom/google/android/calendar/api/attendee/AttendeeStoreUtils;->providerTypeToApiRole(I)I

    move-result v3

    .line 177
    invoke-static {v4}, Lcom/google/android/calendar/api/attendee/AttendeeStoreUtils;->providerTypeToApiType(I)I

    move-result v4

    new-instance v9, Lcom/google/android/calendar/api/attendee/Response$Builder;

    invoke-direct {v9}, Lcom/google/android/calendar/api/attendee/Response$Builder;-><init>()V

    .line 178
    invoke-static {v5}, Lcom/google/android/calendar/api/attendee/AttendeeStoreUtils;->toApiResponseStatus(I)I

    move-result v5

    invoke-virtual {v9, v5}, Lcom/google/android/calendar/api/attendee/Response$Builder;->setStatus(I)Lcom/google/android/calendar/api/attendee/Response$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/calendar/api/attendee/Response$Builder;->build()Lcom/google/android/calendar/api/attendee/Response;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/calendar/api/attendee/Attendee;-><init>(Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;Ljava/lang/String;IILcom/google/android/calendar/api/attendee/Response;)V

    aput-object v0, v8, v6

    .line 179
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 167
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 181
    :cond_0
    return-object v8
.end method

.method public static toApiAttendeesOmitted(Landroid/database/Cursor;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 268
    const/16 v1, 0x10

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static toApiResponseStatus(I)I
    .locals 1

    .prologue
    .line 241
    packed-switch p0, :pswitch_data_0

    .line 249
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 243
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 245
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 247
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static toProviderResponseStatus(I)I
    .locals 1

    .prologue
    .line 255
    packed-switch p0, :pswitch_data_0

    .line 263
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 257
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 259
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 261
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
