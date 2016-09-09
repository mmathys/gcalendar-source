.class Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderAdapter;
.super Landroid/widget/BaseAdapter;
.source "CalendarSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/settings/CalendarSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderAdapter"
.end annotation


# instance fields
.field private final mFirstGroupHeaderTopPadding:I

.field private final mGroupHeaderTopPadding:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mResources:Landroid/content/res/Resources;

.field private final mShowMoreColor:I

.field private final mTitleColor:I

.field final synthetic this$0:Lcom/android/calendar/timely/settings/CalendarSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/android/calendar/timely/settings/CalendarSettingsActivity;Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 783
    iput-object p1, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderAdapter;->this$0:Lcom/android/calendar/timely/settings/CalendarSettingsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 784
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 785
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderAdapter;->mResources:Landroid/content/res/Resources;

    .line 787
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderAdapter;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$color;->preference_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderAdapter;->mTitleColor:I

    .line 788
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderAdapter;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$color;->preference_show_more:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderAdapter;->mShowMoreColor:I

    .line 790
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderAdapter;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$dimen;->preferences_group_header_top_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderAdapter;->mGroupHeaderTopPadding:I

    .line 792
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderAdapter;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$dimen;->preferences_first_group_header_top_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderAdapter;->mFirstGroupHeaderTopPadding:I

    .line 794
    invoke-virtual {p1}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderAdapter;->mGroupHeaderTopPadding:I

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 795
    return-void
.end method

.method private getHeaderType(Landroid/preference/PreferenceActivity$Header;)I
    .locals 1

    .prologue
    .line 875
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 876
    const/4 v0, 0x0

    .line 878
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 799
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderAdapter;->this$0:Lcom/android/calendar/timely/settings/CalendarSettingsActivity;

    # getter for: Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mHeaders:Ljava/util/List;
    invoke-static {v0}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->access$000(Lcom/android/calendar/timely/settings/CalendarSettingsActivity;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderAdapter;->this$0:Lcom/android/calendar/timely/settings/CalendarSettingsActivity;

    # getter for: Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mHeaders:Ljava/util/List;
    invoke-static {v0}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->access$000(Lcom/android/calendar/timely/settings/CalendarSettingsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Landroid/preference/PreferenceActivity$Header;
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderAdapter;->this$0:Lcom/android/calendar/timely/settings/CalendarSettingsActivity;

    # getter for: Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mHeaders:Ljava/util/List;
    invoke-static {v0}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->access$000(Lcom/android/calendar/timely/settings/CalendarSettingsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 769
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderAdapter;->getItem(I)Landroid/preference/PreferenceActivity$Header;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 7

    .prologue
    const-wide/16 v2, -0x1

    .line 824
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderAdapter;->this$0:Lcom/android/calendar/timely/settings/CalendarSettingsActivity;

    # getter for: Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mHeaders:Ljava/util/List;
    invoke-static {v0}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->access$000(Lcom/android/calendar/timely/settings/CalendarSettingsActivity;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    move-wide v0, v2

    .line 860
    :goto_0
    return-wide v0

    .line 827
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderAdapter;->this$0:Lcom/android/calendar/timely/settings/CalendarSettingsActivity;

    # getter for: Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mHeaders:Ljava/util/List;
    invoke-static {v0}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->access$000(Lcom/android/calendar/timely/settings/CalendarSettingsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 828
    invoke-direct {p0, v0}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    .line 829
    packed-switch v1, :pswitch_data_0

    .line 859
    # getter for: Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid item id for header %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v1, v4}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-wide v0, v2

    .line 860
    goto :goto_0

    .line 831
    :pswitch_0
    iget-object v1, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    .line 833
    iget v0, v0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    int-to-long v0, v0

    goto :goto_0

    .line 836
    :cond_1
    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 840
    :pswitch_1
    iget-object v1, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    .line 842
    iget v0, v0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    int-to-long v0, v0

    goto :goto_0

    .line 845
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 846
    iget-object v2, v0, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_4

    .line 848
    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v2, "key_account_name"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 849
    :cond_4
    iget-object v2, v0, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    if-eqz v2, :cond_3

    .line 851
    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v2, "key_uri"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 852
    if-eqz v0, :cond_3

    .line 853
    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 829
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 871
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderAdapter;->getItem(I)Landroid/preference/PreferenceActivity$Header;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 885
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderAdapter;->getItem(I)Landroid/preference/PreferenceActivity$Header;

    move-result-object v7

    .line 886
    invoke-direct {p0, v7}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v8

    .line 891
    if-nez p2, :cond_2

    .line 892
    new-instance v6, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderViewHolder;

    invoke-direct {v6, v5}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderViewHolder;-><init>(Lcom/android/calendar/timely/settings/CalendarSettingsActivity$1;)V

    .line 893
    packed-switch v8, :pswitch_data_0

    move-object v0, v5

    .line 913
    :goto_0
    invoke-virtual {v0, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p2, v0

    move-object v4, v6

    .line 920
    :goto_1
    packed-switch v8, :pswitch_data_1

    .line 972
    :cond_0
    :goto_2
    return-object p2

    .line 895
    :pswitch_0
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/android/calendar/R$layout;->preference_group_header_item:I

    invoke-virtual {v0, v4, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 897
    sget v0, Lcom/android/calendar/R$id;->title:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 898
    iget-object v0, v6, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderViewHolder;->title:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderAdapter;->this$0:Lcom/android/calendar/timely/settings/CalendarSettingsActivity;

    # getter for: Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mRobotoMedium:Landroid/graphics/Typeface;
    invoke-static {v9}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->access$300(Lcom/android/calendar/timely/settings/CalendarSettingsActivity;)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 899
    sget v0, Lcom/android/calendar/R$id;->divider:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v6, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderViewHolder;->line:Landroid/view/View;

    move-object v0, v4

    .line 900
    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 905
    :goto_3
    iget-object v4, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v9, Lcom/android/calendar/R$layout;->preference_header_item:I

    invoke-virtual {v4, v9, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 906
    sget v9, Lcom/android/calendar/R$id;->divider:I

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, v6, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderViewHolder;->line:Landroid/view/View;

    .line 907
    iget-object v9, v6, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderViewHolder;->line:Landroid/view/View;

    if-eqz v0, :cond_1

    move v0, v2

    :goto_4
    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 908
    sget v0, Lcom/android/calendar/R$id;->icon_layout:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v6, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderViewHolder;->iconLayout:Landroid/view/View;

    .line 909
    sget v0, Lcom/android/calendar/R$id;->icon:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v6, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 910
    sget v0, Lcom/android/calendar/R$id;->title:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderViewHolder;->title:Landroid/widget/TextView;

    move-object v0, v4

    goto :goto_0

    :cond_1
    move v0, v3

    .line 907
    goto :goto_4

    .line 916
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderViewHolder;

    move-object v4, v0

    goto :goto_1

    .line 923
    :pswitch_2
    iget-object v1, v4, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderViewHolder;->title:Landroid/widget/TextView;

    iget-object v0, v7, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    .line 924
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderAdapter;->mResources:Landroid/content/res/Resources;

    iget v3, v7, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 923
    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 927
    if-nez p1, :cond_4

    .line 928
    iget-object v0, v4, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderViewHolder;->line:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 929
    iget v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderAdapter;->mFirstGroupHeaderTopPadding:I

    invoke-virtual {p2, v2, v0, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_2

    .line 925
    :cond_3
    iget-object v0, v7, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    goto :goto_5

    .line 931
    :cond_4
    iget-object v0, v4, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderViewHolder;->line:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 932
    iget v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderAdapter;->mGroupHeaderTopPadding:I

    invoke-virtual {p2, v2, v0, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_2

    .line 938
    :pswitch_3
    iget-object v0, v7, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-nez v0, :cond_5

    .line 939
    :goto_6
    iget-object v6, v4, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderViewHolder;->title:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    .line 940
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderAdapter;->mResources:Landroid/content/res/Resources;

    iget v8, v7, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 939
    :goto_7
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 943
    iget-object v0, v4, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderViewHolder;->iconLayout:Landroid/view/View;

    if-eqz v1, :cond_7

    :goto_8
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 945
    iget-object v0, v4, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderViewHolder;->title:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderAdapter;->mTitleColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 947
    iget-object v0, v7, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    if-eqz v0, :cond_8

    iget-object v0, v7, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v1, "key_color"

    .line 948
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 950
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderAdapter;->mResources:Landroid/content/res/Resources;

    # getter for: Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->COLORABLE_CIRCLE_RES:I
    invoke-static {}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->access$400()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 951
    iget-object v1, v7, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v2, "key_color"

    .line 952
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 951
    invoke-static {v1}, Lcom/android/calendar/Utils;->getDisplayColorFromColor(I)I

    move-result v1

    .line 953
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 955
    iget-object v1, v4, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 956
    iget-object v2, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderAdapter;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/calendar/R$dimen;->header_icon_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 957
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 958
    iget-object v2, v4, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 959
    iget-object v1, v4, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    :cond_5
    move v1, v2

    .line 938
    goto :goto_6

    .line 941
    :cond_6
    iget-object v0, v7, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    goto :goto_7

    :cond_7
    move v3, v2

    .line 943
    goto :goto_8

    .line 962
    :cond_8
    iget-object v0, v4, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 964
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderAdapter;->this$0:Lcom/android/calendar/timely/settings/CalendarSettingsActivity;

    # invokes: Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->isShowMoreHeader(Landroid/preference/PreferenceActivity$Header;)Z
    invoke-static {v0, v7}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->access$500(Lcom/android/calendar/timely/settings/CalendarSettingsActivity;Landroid/preference/PreferenceActivity$Header;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, v4, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderViewHolder;->title:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderAdapter;->mShowMoreColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    :pswitch_4
    move v0, v2

    goto/16 :goto_3

    .line 893
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_1
    .end packed-switch

    .line 920
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 809
    const/4 v0, 0x3

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 866
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 804
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
