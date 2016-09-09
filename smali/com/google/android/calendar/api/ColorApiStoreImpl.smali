.class public Lcom/google/android/calendar/api/ColorApiStoreImpl;
.super Ljava/lang/Object;
.source "ColorApiStoreImpl.java"

# interfaces
.implements Lcom/google/android/calendar/api/CrudApi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/calendar/api/CrudApi",
        "<",
        "Lcom/google/android/calendar/api/ApiColor;",
        "Lcom/google/android/calendar/api/ColorModifications;",
        "Lcom/google/android/calendar/api/ColorDescriptor;",
        "Lcom/google/android/calendar/api/ColorFilterOptions;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final READ_SELECTION_STRING:Ljava/lang/String;


# instance fields
.field private final mTranslation:Lcom/google/android/calendar/api/ColorTranslator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 48
    const-string v0, "%s = ? AND %s = ? AND %s = ? AND %s = ?"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "account_name"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "account_type"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "color_type"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "color_index"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/api/ColorApiStoreImpl;->READ_SELECTION_STRING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/calendar/api/ColorTranslator;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iput-object p1, p0, Lcom/google/android/calendar/api/ColorApiStoreImpl;->mTranslation:Lcom/google/android/calendar/api/ColorTranslator;

    .line 35
    return-void
.end method

.method private getDescriptorFromCursor(Landroid/database/Cursor;)Lcom/google/android/calendar/api/ColorDescriptor;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 165
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 166
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 167
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 168
    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 169
    new-instance v4, Landroid/accounts/Account;

    invoke-direct {v4, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    if-nez v3, :cond_0

    .line 171
    invoke-static {v4, v2}, Lcom/google/android/calendar/api/ColorDescriptor;->createCalendarColorDescriptor(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/calendar/api/ColorDescriptor;

    move-result-object v0

    .line 173
    :goto_0
    return-object v0

    .line 172
    :cond_0
    if-ne v3, v5, :cond_1

    .line 173
    invoke-static {v4, v2}, Lcom/google/android/calendar/api/ColorDescriptor;->createEventColorDescriptor(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/calendar/api/ColorDescriptor;

    move-result-object v0

    goto :goto_0

    .line 175
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This should be unreachable: unknown color type?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSelectionParameters(Lcom/google/android/calendar/api/ColorFilterOptions;)[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 251
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/ColorApiStoreImpl;->haveNothingToFilter(Lcom/google/android/calendar/api/ColorFilterOptions;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    const/4 v0, 0x0

    .line 273
    :goto_0
    return-object v0

    .line 254
    :cond_0
    if-eqz p1, :cond_4

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 256
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 257
    invoke-virtual {p1}, Lcom/google/android/calendar/api/ColorFilterOptions;->getSelectedType()I

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    invoke-virtual {p1}, Lcom/google/android/calendar/api/ColorFilterOptions;->getSelectedType()I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v2

    .line 259
    :goto_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/calendar/api/ColorFilterOptions;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 265
    invoke-virtual {p1}, Lcom/google/android/calendar/api/ColorFilterOptions;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/calendar/api/ColorFilterOptions;->getAccountType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 268
    invoke-virtual {p1}, Lcom/google/android/calendar/api/ColorFilterOptions;->getAccountType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    :goto_3
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 273
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0

    :cond_4
    move v0, v2

    .line 254
    goto :goto_1

    :cond_5
    move v0, v1

    .line 262
    goto :goto_2

    :cond_6
    move v1, v2

    .line 271
    goto :goto_3
.end method

.method private getSelectionString(Lcom/google/android/calendar/api/ColorFilterOptions;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/ColorApiStoreImpl;->haveNothingToFilter(Lcom/google/android/calendar/api/ColorFilterOptions;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    const/4 v0, 0x0

    .line 246
    :goto_0
    return-object v0

    .line 232
    :cond_0
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 236
    invoke-virtual {p1}, Lcom/google/android/calendar/api/ColorFilterOptions;->getSelectedType()I

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    const-string v1, "color_type"

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/calendar/api/ColorFilterOptions;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 240
    const-string v1, "account_name"

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/calendar/api/ColorFilterOptions;->getAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 243
    const-string v1, "account_type"

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_3
    const-string v1, " AND "

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 232
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getTranslatedApiColorFromCursor(Landroid/database/Cursor;Lcom/google/android/calendar/api/ColorDescriptor;)Lcom/google/android/calendar/api/ApiColor;
    .locals 6

    .prologue
    .line 181
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 182
    iget-object v1, p0, Lcom/google/android/calendar/api/ColorApiStoreImpl;->mTranslation:Lcom/google/android/calendar/api/ColorTranslator;

    invoke-interface {v1, v0}, Lcom/google/android/calendar/api/ColorTranslator;->translateColor(I)Lcom/google/android/calendar/api/ColorTranslator$TranslationResult;

    move-result-object v1

    .line 184
    new-instance v0, Lcom/google/android/calendar/api/ApiColor;

    iget v2, v1, Lcom/google/android/calendar/api/ColorTranslator$TranslationResult;->displayColor:I

    iget-object v3, v1, Lcom/google/android/calendar/api/ColorTranslator$TranslationResult;->name:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/calendar/api/ColorTranslator$TranslationResult;->lightColor:Ljava/lang/Integer;

    iget-object v5, v1, Lcom/google/android/calendar/api/ColorTranslator$TranslationResult;->paletteIndex:Ljava/lang/Integer;

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/calendar/api/ApiColor;-><init>(Lcom/google/android/calendar/api/ColorDescriptor;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method

.method private haveNothingToFilter(Lcom/google/android/calendar/api/ColorFilterOptions;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 277
    if-nez p1, :cond_1

    .line 280
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/calendar/api/ColorFilterOptions;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 281
    invoke-virtual {p1}, Lcom/google/android/calendar/api/ColorFilterOptions;->getAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 282
    invoke-virtual {p1}, Lcom/google/android/calendar/api/ColorFilterOptions;->getSelectedType()I

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private queryWithFilter(Lcom/google/android/calendar/api/ColorFilterOptions;Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/ColorApiStoreImpl;->getSelectionString(Lcom/google/android/calendar/api/ColorFilterOptions;)Ljava/lang/String;

    move-result-object v3

    .line 216
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/ColorApiStoreImpl;->getSelectionParameters(Lcom/google/android/calendar/api/ColorFilterOptions;)[Ljava/lang/String;

    move-result-object v4

    .line 217
    sget-object v1, Landroid/provider/CalendarContract$Colors;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/calendar/api/LoadDetailsConstants;->COLORS_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 220
    if-nez v0, :cond_0

    .line 222
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error reading color count from the provider"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_0
    return-object v0
.end method


# virtual methods
.method public count(Lcom/google/android/calendar/api/ColorFilterOptions;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-static {}, Lcom/google/android/calendar/api/CalendarApi;->getApiContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/calendar/api/ColorApiStoreImpl;->count(Lcom/google/android/calendar/api/ColorFilterOptions;Landroid/content/ContentResolver;)I

    move-result v0

    return v0
.end method

.method count(Lcom/google/android/calendar/api/ColorFilterOptions;Landroid/content/ContentResolver;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    const/4 v1, 0x0

    .line 204
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/calendar/api/ColorApiStoreImpl;->queryWithFilter(Lcom/google/android/calendar/api/ColorFilterOptions;Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v1

    .line 205
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 207
    if-eqz v1, :cond_0

    .line 208
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 205
    :cond_0
    return v0

    .line 207
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 208
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method public bridge synthetic count(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    check-cast p1, Lcom/google/android/calendar/api/ColorFilterOptions;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/api/ColorApiStoreImpl;->count(Lcom/google/android/calendar/api/ColorFilterOptions;)I

    move-result v0

    return v0
.end method

.method public create(Lcom/google/android/calendar/api/ColorModifications;)Lcom/google/android/calendar/api/ColorDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/calendar/api/ColorApiStoreImpl;->create(Lcom/google/android/calendar/api/ColorModifications;Z)Lcom/google/android/calendar/api/ColorDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public create(Lcom/google/android/calendar/api/ColorModifications;Z)Lcom/google/android/calendar/api/ColorDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    check-cast p1, Lcom/google/android/calendar/api/ColorModifications;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/api/ColorApiStoreImpl;->create(Lcom/google/android/calendar/api/ColorModifications;)Lcom/google/android/calendar/api/ColorDescriptor;

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
    .line 26
    check-cast p1, Lcom/google/android/calendar/api/ColorModifications;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/api/ColorApiStoreImpl;->create(Lcom/google/android/calendar/api/ColorModifications;Z)Lcom/google/android/calendar/api/ColorDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public delete(Lcom/google/android/calendar/api/ColorDescriptor;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/calendar/api/ColorApiStoreImpl;->delete(Lcom/google/android/calendar/api/ColorDescriptor;Z)Z

    move-result v0

    return v0
.end method

.method public delete(Lcom/google/android/calendar/api/ColorDescriptor;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic delete(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    check-cast p1, Lcom/google/android/calendar/api/ColorDescriptor;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/api/ColorApiStoreImpl;->delete(Lcom/google/android/calendar/api/ColorDescriptor;)Z

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
    .line 26
    check-cast p1, Lcom/google/android/calendar/api/ColorDescriptor;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/api/ColorApiStoreImpl;->delete(Lcom/google/android/calendar/api/ColorDescriptor;Z)Z

    move-result v0

    return v0
.end method

.method public list(Lcom/google/android/calendar/api/ColorFilterOptions;)[Lcom/google/android/calendar/api/ApiColor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {}, Lcom/google/android/calendar/api/CalendarApi;->getApiContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/calendar/api/ColorApiStoreImpl;->list(Lcom/google/android/calendar/api/ColorFilterOptions;Landroid/content/ContentResolver;)[Lcom/google/android/calendar/api/ApiColor;

    move-result-object v0

    return-object v0
.end method

.method list(Lcom/google/android/calendar/api/ColorFilterOptions;Landroid/content/ContentResolver;)[Lcom/google/android/calendar/api/ApiColor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    const/4 v1, 0x0

    .line 143
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/calendar/api/ColorApiStoreImpl;->queryWithFilter(Lcom/google/android/calendar/api/ColorFilterOptions;Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v1

    .line 144
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 145
    new-array v3, v2, [Lcom/google/android/calendar/api/ApiColor;

    .line 146
    if-lez v2, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Error listing colors from the provider - bad cursor"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    .line 158
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 150
    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    .line 151
    :try_start_1
    invoke-direct {p0, v1}, Lcom/google/android/calendar/api/ColorApiStoreImpl;->getDescriptorFromCursor(Landroid/database/Cursor;)Lcom/google/android/calendar/api/ColorDescriptor;

    move-result-object v4

    .line 152
    invoke-direct {p0, v1, v4}, Lcom/google/android/calendar/api/ColorApiStoreImpl;->getTranslatedApiColorFromCursor(Landroid/database/Cursor;Lcom/google/android/calendar/api/ColorDescriptor;)Lcom/google/android/calendar/api/ApiColor;

    move-result-object v4

    aput-object v4, v3, v0

    .line 153
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_2
    if-eqz v1, :cond_3

    .line 158
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 155
    :cond_3
    return-object v3
.end method

.method public bridge synthetic list(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    check-cast p1, Lcom/google/android/calendar/api/ColorFilterOptions;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/api/ColorApiStoreImpl;->list(Lcom/google/android/calendar/api/ColorFilterOptions;)[Lcom/google/android/calendar/api/ApiColor;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/google/android/calendar/api/ColorDescriptor;)Lcom/google/android/calendar/api/ApiColor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 59
    invoke-static {}, Lcom/google/android/calendar/api/CalendarApi;->getApiContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/calendar/api/ColorApiStoreImpl;->read(Lcom/google/android/calendar/api/ColorDescriptor;Landroid/content/ContentResolver;)Lcom/google/android/calendar/api/ApiColor;

    move-result-object v0

    return-object v0

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method read(Lcom/google/android/calendar/api/ColorDescriptor;Landroid/content/ContentResolver;)Lcom/google/android/calendar/api/ApiColor;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 65
    .line 67
    :try_start_0
    sget-object v1, Landroid/provider/CalendarContract$Colors;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/calendar/api/LoadDetailsConstants;->COLORS_PROJECTION:[Ljava/lang/String;

    sget-object v3, Lcom/google/android/calendar/api/ColorApiStoreImpl;->READ_SELECTION_STRING:Ljava/lang/String;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 71
    invoke-virtual {p1}, Lcom/google/android/calendar/api/ColorDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v8

    iget-object v8, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v8, v4, v5

    const/4 v5, 0x1

    .line 72
    invoke-virtual {p1}, Lcom/google/android/calendar/api/ColorDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v8

    iget-object v8, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v8, v4, v5

    const/4 v5, 0x2

    .line 73
    invoke-virtual {p1}, Lcom/google/android/calendar/api/ColorDescriptor;->getType()I

    move-result v8

    if-ne v8, v9, :cond_1

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x3

    .line 75
    invoke-virtual {p1}, Lcom/google/android/calendar/api/ColorDescriptor;->getColorId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p2

    .line 67
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 80
    if-nez v1, :cond_2

    .line 82
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Error while reading color data from the provider"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    :catchall_0
    move-exception v0

    move-object v6, v1

    :goto_1
    if-eqz v6, :cond_0

    .line 99
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    :cond_1
    move v0, v7

    .line 74
    goto :goto_0

    .line 84
    :cond_2
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-le v0, v7, :cond_3

    .line 86
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Error in color data: more than one color to read"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_6

    .line 98
    if-eqz v1, :cond_4

    .line 99
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v6

    .line 96
    :cond_5
    :goto_2
    return-object v0

    .line 92
    :cond_6
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_7

    .line 94
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Error while reading color data: invalid cursor"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_7
    invoke-direct {p0, v1, p1}, Lcom/google/android/calendar/api/ColorApiStoreImpl;->getTranslatedApiColorFromCursor(Landroid/database/Cursor;Lcom/google/android/calendar/api/ColorDescriptor;)Lcom/google/android/calendar/api/ApiColor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 98
    if-eqz v1, :cond_5

    .line 99
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 98
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public bridge synthetic read(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    check-cast p1, Lcom/google/android/calendar/api/ColorDescriptor;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/api/ColorApiStoreImpl;->read(Lcom/google/android/calendar/api/ColorDescriptor;)Lcom/google/android/calendar/api/ApiColor;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/google/android/calendar/api/ColorModifications;Ljava/lang/Void;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/calendar/api/ColorApiStoreImpl;->update(Lcom/google/android/calendar/api/ColorModifications;Ljava/lang/Void;Z)Z

    move-result v0

    return v0
.end method

.method public update(Lcom/google/android/calendar/api/ColorModifications;Ljava/lang/Void;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

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
    .line 26
    check-cast p1, Lcom/google/android/calendar/api/ColorModifications;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/api/ColorApiStoreImpl;->update(Lcom/google/android/calendar/api/ColorModifications;Ljava/lang/Void;)Z

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
    .line 26
    check-cast p1, Lcom/google/android/calendar/api/ColorModifications;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/calendar/api/ColorApiStoreImpl;->update(Lcom/google/android/calendar/api/ColorModifications;Ljava/lang/Void;Z)Z

    move-result v0

    return v0
.end method
