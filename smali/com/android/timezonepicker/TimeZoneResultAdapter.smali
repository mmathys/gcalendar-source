.class public Lcom/android/timezonepicker/TimeZoneResultAdapter;
.super Landroid/widget/BaseAdapter;
.source "TimeZoneResultAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$OnSetFilterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/timezonepicker/TimeZoneResultAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final VIEW_TAG_TIME_ZONE:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFilteredTimeZoneIndices:[I

.field private mFilteredTimeZoneLength:I

.field private mHasResults:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLastFilterString:Ljava/lang/String;

.field private mLastFilterTime:I

.field private mLastFilterType:I

.field private mTimeZoneData:Lcom/android/timezonepicker/TimeZoneData;

.field private mTimeZoneSetListener:Lcom/android/timezonepicker/TimeZonePickerView$OnTimeZoneSetListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/android/timezonepicker/R$id;->time_zone:I

    sput v0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->VIEW_TAG_TIME_ZONE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/timezonepicker/TimeZoneData;Lcom/android/timezonepicker/TimeZonePickerView$OnTimeZoneSetListener;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 53
    iput-boolean v1, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mHasResults:Z

    .line 85
    iput v1, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneLength:I

    .line 91
    iput-object p1, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mContext:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mTimeZoneData:Lcom/android/timezonepicker/TimeZoneData;

    .line 93
    iput-object p3, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mTimeZoneSetListener:Lcom/android/timezonepicker/TimeZonePickerView$OnTimeZoneSetListener;

    .line 95
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 97
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mTimeZoneData:Lcom/android/timezonepicker/TimeZoneData;

    invoke-virtual {v0}, Lcom/android/timezonepicker/TimeZoneData;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneIndices:[I

    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v1}, Lcom/android/timezonepicker/TimeZoneResultAdapter;->onSetFilter(ILjava/lang/String;I)V

    .line 100
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneLength:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 244
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneLength:I

    if-lt p1, v0, :cond_1

    .line 245
    :cond_0
    const/4 v0, 0x0

    .line 248
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mTimeZoneData:Lcom/android/timezonepicker/TimeZoneData;

    iget-object v1, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneIndices:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/android/timezonepicker/TimeZoneData;->get(I)Lcom/android/timezonepicker/TimeZoneInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneIndices:[I

    aget v0, v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getLastFilterString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mLastFilterString:Ljava/lang/String;

    return-object v0
.end method

.method public getLastFilterType()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mLastFilterType:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 268
    .line 270
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneIndices:[I

    aget v0, v0, p1

    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/timezonepicker/R$layout;->empty_time_zone_item:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 298
    :goto_0
    return-object p2

    .line 276
    :cond_0
    if-eqz p2, :cond_1

    sget v0, Lcom/android/timezonepicker/R$id;->empty_item:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/timezonepicker/R$layout;->time_zone_item:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 278
    invoke-static {p2}, Lcom/android/timezonepicker/TimeZoneResultAdapter$ViewHolder;->setupViewHolder(Landroid/view/View;)V

    .line 281
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/timezonepicker/TimeZoneResultAdapter$ViewHolder;

    .line 283
    iget-object v1, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mTimeZoneData:Lcom/android/timezonepicker/TimeZoneData;

    iget-object v2, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneIndices:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Lcom/android/timezonepicker/TimeZoneData;->get(I)Lcom/android/timezonepicker/TimeZoneInfo;

    move-result-object v1

    .line 284
    sget v2, Lcom/android/timezonepicker/TimeZoneResultAdapter;->VIEW_TAG_TIME_ZONE:I

    invoke-virtual {p2, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 286
    iget-object v2, v0, Lcom/android/timezonepicker/TimeZoneResultAdapter$ViewHolder;->timeZone:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/android/timezonepicker/TimeZoneInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v2, v0, Lcom/android/timezonepicker/TimeZoneResultAdapter$ViewHolder;->timeOffset:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/android/timezonepicker/TimeZoneInfo;->getGmtDisplayName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v1, v1, Lcom/android/timezonepicker/TimeZoneInfo;->mCountry:Ljava/lang/String;

    .line 291
    if-nez v1, :cond_3

    .line 292
    iget-object v0, v0, Lcom/android/timezonepicker/TimeZoneResultAdapter$ViewHolder;->location:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 294
    :cond_3
    iget-object v2, v0, Lcom/android/timezonepicker/TimeZoneResultAdapter$ViewHolder;->location:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v0, v0, Lcom/android/timezonepicker/TimeZoneResultAdapter$ViewHolder;->location:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public hasResults()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mHasResults:Z

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneIndices:[I

    aget v0, v0, p1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mTimeZoneSetListener:Lcom/android/timezonepicker/TimeZonePickerView$OnTimeZoneSetListener;

    if-eqz v0, :cond_0

    .line 310
    sget v0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->VIEW_TAG_TIME_ZONE:I

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/timezonepicker/TimeZoneInfo;

    .line 311
    if-eqz v0, :cond_0

    .line 312
    iget-object v1, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mTimeZoneSetListener:Lcom/android/timezonepicker/TimeZonePickerView$OnTimeZoneSetListener;

    invoke-interface {v1, v0}, Lcom/android/timezonepicker/TimeZonePickerView$OnTimeZoneSetListener;->onTimeZoneSet(Lcom/android/timezonepicker/TimeZoneInfo;)V

    .line 313
    iget-object v0, v0, Lcom/android/timezonepicker/TimeZoneInfo;->mTzId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/timezonepicker/TimeZoneResultAdapter;->saveRecentTimezone(Ljava/lang/String;)V

    .line 316
    :cond_0
    return-void
.end method

.method public onSetFilter(ILjava/lang/String;I)V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v1, 0x0

    .line 125
    iput p1, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mLastFilterType:I

    .line 126
    iput-object p2, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mLastFilterString:Ljava/lang/String;

    .line 127
    iput p3, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mLastFilterTime:I

    .line 129
    iput v1, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneLength:I

    .line 132
    packed-switch p1, :pswitch_data_0

    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 134
    :pswitch_0
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneIndices:[I

    iget v2, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneLength:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneLength:I

    const/16 v3, -0x64

    aput v3, v0, v2

    .line 183
    :cond_0
    :pswitch_1
    iget v0, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneLength:I

    if-lez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mHasResults:Z

    .line 185
    invoke-virtual {p0}, Lcom/android/timezonepicker/TimeZoneResultAdapter;->notifyDataSetChanged()V

    .line 186
    return-void

    .line 138
    :pswitch_2
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mTimeZoneData:Lcom/android/timezonepicker/TimeZoneData;

    invoke-virtual {v0}, Lcom/android/timezonepicker/TimeZoneData;->getDefaultTimeZoneIndex()I

    move-result v0

    .line 139
    if-eq v0, v7, :cond_1

    .line 140
    iget-object v2, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneIndices:[I

    iget v3, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneLength:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneLength:I

    aput v0, v2, v3

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mContext:Landroid/content/Context;

    const-string v2, "com.android.calendar_preferences"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 146
    const-string v2, "preferences_recent_timezones"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 148
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 149
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_0

    .line 150
    aget-object v3, v2, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    aget-object v3, v2, v0

    iget-object v4, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mTimeZoneData:Lcom/android/timezonepicker/TimeZoneData;

    iget-object v4, v4, Lcom/android/timezonepicker/TimeZoneData;->mDefaultTimeZoneId:Ljava/lang/String;

    .line 151
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 152
    iget-object v3, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mTimeZoneData:Lcom/android/timezonepicker/TimeZoneData;

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Lcom/android/timezonepicker/TimeZoneData;->findIndexByTimeZoneIdSlow(Ljava/lang/String;)I

    move-result v3

    .line 153
    if-eq v3, v7, :cond_2

    .line 154
    iget-object v4, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneIndices:[I

    iget v5, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneLength:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneLength:I

    aput v3, v4, v5

    .line 149
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 162
    :pswitch_3
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mTimeZoneData:Lcom/android/timezonepicker/TimeZoneData;

    invoke-virtual {v0, p3}, Lcom/android/timezonepicker/TimeZoneData;->getTimeZonesByOffset(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 165
    iget-object v3, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneIndices:[I

    iget v4, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneLength:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneLength:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v4

    goto :goto_2

    .line 170
    :pswitch_4
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mTimeZoneData:Lcom/android/timezonepicker/TimeZoneData;

    iget-object v0, v0, Lcom/android/timezonepicker/TimeZoneData;->mTimeZonesByCountry:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 171
    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 173
    iget-object v3, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneIndices:[I

    iget v4, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneLength:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneLength:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v4

    goto :goto_3

    :cond_3
    move v0, v1

    .line 183
    goto/16 :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public saveRecentTimezone(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 197
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneResultAdapter;->mContext:Landroid/content/Context;

    const-string v1, "com.android.calendar_preferences"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 199
    const-string v0, "preferences_recent_timezones"

    const/4 v1, 0x0

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    if-nez v0, :cond_0

    .line 234
    :goto_0
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preferences_recent_timezones"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 235
    return-void

    .line 204
    :cond_0
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 205
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v0, v2

    :goto_1
    if-ge v0, v5, :cond_2

    aget-object v6, v4, v0

    .line 206
    invoke-virtual {v1, v6}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 207
    invoke-virtual {v1, v6}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 211
    :cond_2
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 212
    :goto_2
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->size()I

    move-result v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_3

    .line 213
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 219
    :cond_3
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    const/4 v0, 0x1

    .line 223
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 224
    if-eqz v1, :cond_5

    move v1, v2

    .line 229
    :goto_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 216
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 217
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 227
    :cond_5
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 231
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
