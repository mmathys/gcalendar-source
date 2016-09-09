.class public Lcom/google/android/gms/chips/GmsRecipientAdapter$GmsFilter;
.super Landroid/widget/Filter;
.source "GmsRecipientAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/chips/GmsRecipientAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GmsFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gms/chips/GmsRecipientAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/chips/GmsRecipientAdapter;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/android/gms/chips/GmsRecipientAdapter$GmsFilter;->this$0:Lcom/google/android/gms/chips/GmsRecipientAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 9

    .prologue
    const/4 v1, 0x3

    const/4 v6, 0x1

    .line 90
    const-string v0, "GmsRecipientAdapter"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "GmsRecipientAdapter"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x26

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "start filtering. constraint: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", thread:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 98
    iget-object v0, p0, Lcom/google/android/gms/chips/GmsRecipientAdapter$GmsFilter;->this$0:Lcom/google/android/gms/chips/GmsRecipientAdapter;

    # getter for: Lcom/google/android/gms/chips/GmsRecipientAdapter;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;
    invoke-static {v0}, Lcom/google/android/gms/chips/GmsRecipientAdapter;->access$000(Lcom/google/android/gms/chips/GmsRecipientAdapter;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/chips/GmsRecipientAdapter$GmsFilter;->this$0:Lcom/google/android/gms/chips/GmsRecipientAdapter;

    # invokes: Lcom/google/android/gms/chips/GmsRecipientAdapter;->clearTempEntries()V
    invoke-static {v0}, Lcom/google/android/gms/chips/GmsRecipientAdapter;->access$100(Lcom/google/android/gms/chips/GmsRecipientAdapter;)V

    move-object v0, v1

    .line 177
    :goto_0
    return-object v0

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/chips/GmsRecipientAdapter$GmsFilter;->this$0:Lcom/google/android/gms/chips/GmsRecipientAdapter;

    invoke-virtual {v0}, Lcom/google/android/gms/chips/GmsRecipientAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/chips/GmsRecipientAdapter$GmsFilter;->this$0:Lcom/google/android/gms/chips/GmsRecipientAdapter;

    invoke-virtual {v2}, Lcom/google/android/gms/chips/GmsRecipientAdapter;->getPermissionsCheckListener()Lcom/android/ex/chips/ChipsUtil$PermissionsCheckListener;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/ex/chips/ChipsUtil;->hasPermissions(Landroid/content/Context;Lcom/android/ex/chips/ChipsUtil$PermissionsCheckListener;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/chips/GmsRecipientAdapter$GmsFilter;->this$0:Lcom/google/android/gms/chips/GmsRecipientAdapter;

    # invokes: Lcom/google/android/gms/chips/GmsRecipientAdapter;->clearTempEntries()V
    invoke-static {v0}, Lcom/google/android/gms/chips/GmsRecipientAdapter;->access$200(Lcom/google/android/gms/chips/GmsRecipientAdapter;)V

    .line 107
    iget-object v0, p0, Lcom/google/android/gms/chips/GmsRecipientAdapter$GmsFilter;->this$0:Lcom/google/android/gms/chips/GmsRecipientAdapter;

    # getter for: Lcom/google/android/gms/chips/GmsRecipientAdapter;->mShowRequestPermissionsItem:Z
    invoke-static {v0}, Lcom/google/android/gms/chips/GmsRecipientAdapter;->access$300(Lcom/google/android/gms/chips/GmsRecipientAdapter;)Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    .line 109
    goto :goto_0

    .line 111
    :cond_3
    sget-object v0, Lcom/android/ex/chips/ChipsUtil;->REQUIRED_PERMISSIONS:[Ljava/lang/String;

    .line 112
    invoke-static {v0}, Lcom/android/ex/chips/RecipientEntry;->constructPermissionEntry([Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    .line 113
    new-instance v2, Lcom/google/android/gms/chips/GmsRecipientAdapter$GmsFilterResult;

    iget-object v3, p0, Lcom/google/android/gms/chips/GmsRecipientAdapter$GmsFilter;->this$0:Lcom/google/android/gms/chips/GmsRecipientAdapter;

    .line 114
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 115
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v0, v4, v5}, Lcom/google/android/gms/chips/GmsRecipientAdapter$GmsFilterResult;-><init>(Lcom/google/android/gms/chips/GmsRecipientAdapter;Ljava/util/List;Ljava/util/Set;Ljava/util/List;)V

    iput-object v2, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 117
    iput v6, v1, Landroid/widget/Filter$FilterResults;->count:I

    move-object v0, v1

    .line 118
    goto :goto_0

    .line 122
    :cond_4
    new-instance v0, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/chips/GmsRecipientAdapter$GmsFilter;->this$0:Lcom/google/android/gms/chips/GmsRecipientAdapter;

    .line 124
    invoke-virtual {v2}, Lcom/google/android/gms/chips/GmsRecipientAdapter;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;->setAccount(Ljava/lang/String;)Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;

    move-result-object v0

    .line 125
    invoke-virtual {v0, v6}, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;->setUseAndroidContactFallback(Z)Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;->build()Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;

    move-result-object v0

    .line 128
    sget-object v2, Lcom/google/android/gms/people/People;->AutocompleteApi:Lcom/google/android/gms/people/Autocomplete;

    iget-object v3, p0, Lcom/google/android/gms/chips/GmsRecipientAdapter$GmsFilter;->this$0:Lcom/google/android/gms/chips/GmsRecipientAdapter;

    .line 130
    # getter for: Lcom/google/android/gms/chips/GmsRecipientAdapter;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;
    invoke-static {v3}, Lcom/google/android/gms/chips/GmsRecipientAdapter;->access$000(Lcom/google/android/gms/chips/GmsRecipientAdapter;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 129
    invoke-interface {v2, v3, v4, v0}, Lcom/google/android/gms/people/Autocomplete;->loadAutocompleteList(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 131
    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 132
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/common/api/PendingResult;->await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/people/Autocomplete$AutocompleteResult;

    .line 134
    invoke-interface {v0}, Lcom/google/android/gms/people/Autocomplete$AutocompleteResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    .line 135
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_5

    .line 136
    const-string v3, "GmsRecipientAdapter"

    const-string v4, "Autocomplete query timed out."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_5
    invoke-interface {v0}, Lcom/google/android/gms/people/Autocomplete$AutocompleteResult;->getAutocompleteEntries()Lcom/google/android/gms/people/model/AutocompleteBuffer;

    move-result-object v3

    .line 140
    :try_start_0
    const-string v0, "GmsRecipientAdapter"

    const/4 v4, 0x3

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 141
    const-string v0, "GmsRecipientAdapter"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x27

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Autocomplete list loaded: status="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " list="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_6
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez v3, :cond_9

    .line 146
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/chips/GmsRecipientAdapter$GmsFilter;->this$0:Lcom/google/android/gms/chips/GmsRecipientAdapter;

    # invokes: Lcom/google/android/gms/chips/GmsRecipientAdapter;->clearTempEntries()V
    invoke-static {v0}, Lcom/google/android/gms/chips/GmsRecipientAdapter;->access$400(Lcom/google/android/gms/chips/GmsRecipientAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    if-eqz v3, :cond_8

    .line 180
    invoke-interface {v3}, Lcom/google/android/gms/common/data/DataBuffer;->close()V

    :cond_8
    move-object v0, v1

    .line 147
    goto/16 :goto_0

    .line 154
    :cond_9
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 155
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 156
    iget-object v0, p0, Lcom/google/android/gms/chips/GmsRecipientAdapter$GmsFilter;->this$0:Lcom/google/android/gms/chips/GmsRecipientAdapter;

    invoke-virtual {v0}, Lcom/google/android/gms/chips/GmsRecipientAdapter;->getPhotoManager()Lcom/android/ex/chips/PhotoManager;

    move-result-object v5

    .line 157
    invoke-interface {v3}, Lcom/google/android/gms/common/data/DataBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/people/model/AutocompleteEntry;

    .line 158
    invoke-interface {v0}, Lcom/google/android/gms/people/model/AutocompleteEntry;->getItemValue()Ljava/lang/String;

    move-result-object v7

    .line 160
    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 164
    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v7, Lcom/google/android/gms/chips/GmsRecipientEntry;

    invoke-direct {v7, v0}, Lcom/google/android/gms/chips/GmsRecipientEntry;-><init>(Lcom/google/android/gms/people/model/AutocompleteEntry;)V

    .line 167
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v0, p0, Lcom/google/android/gms/chips/GmsRecipientAdapter$GmsFilter;->this$0:Lcom/google/android/gms/chips/GmsRecipientAdapter;

    invoke-interface {v5, v7, v0}, Lcom/android/ex/chips/PhotoManager;->populatePhotoBytesAsync(Lcom/android/ex/chips/RecipientEntry;Lcom/android/ex/chips/PhotoManager$PhotoManagerCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 179
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_b

    .line 180
    invoke-interface {v3}, Lcom/google/android/gms/common/data/DataBuffer;->close()V

    :cond_b
    throw v0

    .line 171
    :cond_c
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/chips/GmsRecipientAdapter$GmsFilter;->this$0:Lcom/google/android/gms/chips/GmsRecipientAdapter;

    .line 172
    # invokes: Lcom/google/android/gms/chips/GmsRecipientAdapter;->searchOtherDirectories(Ljava/util/Set;)Ljava/util/List;
    invoke-static {v0, v4}, Lcom/google/android/gms/chips/GmsRecipientAdapter;->access$500(Lcom/google/android/gms/chips/GmsRecipientAdapter;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    .line 174
    new-instance v5, Lcom/google/android/gms/chips/GmsRecipientAdapter$GmsFilterResult;

    iget-object v6, p0, Lcom/google/android/gms/chips/GmsRecipientAdapter$GmsFilter;->this$0:Lcom/google/android/gms/chips/GmsRecipientAdapter;

    invoke-direct {v5, v6, v2, v4, v0}, Lcom/google/android/gms/chips/GmsRecipientAdapter$GmsFilterResult;-><init>(Lcom/google/android/gms/chips/GmsRecipientAdapter;Ljava/util/List;Ljava/util/Set;Ljava/util/List;)V

    iput-object v5, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 175
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v1, Landroid/widget/Filter$FilterResults;->count:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    if-eqz v3, :cond_d

    .line 180
    invoke-interface {v3}, Lcom/google/android/gms/common/data/DataBuffer;->close()V

    :cond_d
    move-object v0, v1

    .line 177
    goto/16 :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 4

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/gms/chips/GmsRecipientAdapter$GmsFilter;->this$0:Lcom/google/android/gms/chips/GmsRecipientAdapter;

    # setter for: Lcom/google/android/gms/chips/GmsRecipientAdapter;->mCurrentConstraint:Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Lcom/google/android/gms/chips/GmsRecipientAdapter;->access$602(Lcom/google/android/gms/chips/GmsRecipientAdapter;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 191
    iget-object v0, p0, Lcom/google/android/gms/chips/GmsRecipientAdapter$GmsFilter;->this$0:Lcom/google/android/gms/chips/GmsRecipientAdapter;

    # invokes: Lcom/google/android/gms/chips/GmsRecipientAdapter;->clearTempEntries()V
    invoke-static {v0}, Lcom/google/android/gms/chips/GmsRecipientAdapter;->access$700(Lcom/google/android/gms/chips/GmsRecipientAdapter;)V

    .line 193
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 194
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/chips/GmsRecipientAdapter$GmsFilterResult;

    .line 195
    iget-object v1, p0, Lcom/google/android/gms/chips/GmsRecipientAdapter$GmsFilter;->this$0:Lcom/google/android/gms/chips/GmsRecipientAdapter;

    iget-object v2, v0, Lcom/google/android/gms/chips/GmsRecipientAdapter$GmsFilterResult;->entries:Ljava/util/List;

    # setter for: Lcom/google/android/gms/chips/GmsRecipientAdapter;->mEntryList:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/android/gms/chips/GmsRecipientAdapter;->access$802(Lcom/google/android/gms/chips/GmsRecipientAdapter;Ljava/util/List;)Ljava/util/List;

    .line 196
    iget-object v1, p0, Lcom/google/android/gms/chips/GmsRecipientAdapter$GmsFilter;->this$0:Lcom/google/android/gms/chips/GmsRecipientAdapter;

    iget-object v2, v0, Lcom/google/android/gms/chips/GmsRecipientAdapter$GmsFilterResult;->existingDestinations:Ljava/util/Set;

    # setter for: Lcom/google/android/gms/chips/GmsRecipientAdapter;->mExistingDestinations:Ljava/util/Set;
    invoke-static {v1, v2}, Lcom/google/android/gms/chips/GmsRecipientAdapter;->access$902(Lcom/google/android/gms/chips/GmsRecipientAdapter;Ljava/util/Set;)Ljava/util/Set;

    .line 198
    iget-object v2, p0, Lcom/google/android/gms/chips/GmsRecipientAdapter$GmsFilter;->this$0:Lcom/google/android/gms/chips/GmsRecipientAdapter;

    iget-object v1, v0, Lcom/google/android/gms/chips/GmsRecipientAdapter$GmsFilterResult;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    iget-object v1, v0, Lcom/google/android/gms/chips/GmsRecipientAdapter$GmsFilterResult;->paramsList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 199
    const/4 v1, 0x0

    .line 198
    :goto_0
    # invokes: Lcom/google/android/gms/chips/GmsRecipientAdapter;->cacheCurrentEntriesIfNeeded(II)V
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/chips/GmsRecipientAdapter;->access$1000(Lcom/google/android/gms/chips/GmsRecipientAdapter;II)V

    .line 202
    iget-object v1, p0, Lcom/google/android/gms/chips/GmsRecipientAdapter$GmsFilter;->this$0:Lcom/google/android/gms/chips/GmsRecipientAdapter;

    iget-object v2, v0, Lcom/google/android/gms/chips/GmsRecipientAdapter$GmsFilterResult;->entries:Ljava/util/List;

    # invokes: Lcom/google/android/gms/chips/GmsRecipientAdapter;->updateEntries(Ljava/util/List;)V
    invoke-static {v1, v2}, Lcom/google/android/gms/chips/GmsRecipientAdapter;->access$1100(Lcom/google/android/gms/chips/GmsRecipientAdapter;Ljava/util/List;)V

    .line 205
    iget-object v1, v0, Lcom/google/android/gms/chips/GmsRecipientAdapter$GmsFilterResult;->paramsList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/google/android/gms/chips/GmsRecipientAdapter$GmsFilter;->this$0:Lcom/google/android/gms/chips/GmsRecipientAdapter;

    # getter for: Lcom/google/android/gms/chips/GmsRecipientAdapter;->mPreferredMaxResultCount:I
    invoke-static {v1}, Lcom/google/android/gms/chips/GmsRecipientAdapter;->access$1200(Lcom/google/android/gms/chips/GmsRecipientAdapter;)I

    move-result v1

    iget-object v2, v0, Lcom/google/android/gms/chips/GmsRecipientAdapter$GmsFilterResult;->existingDestinations:Ljava/util/Set;

    .line 207
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    sub-int/2addr v1, v2

    .line 208
    iget-object v2, p0, Lcom/google/android/gms/chips/GmsRecipientAdapter$GmsFilter;->this$0:Lcom/google/android/gms/chips/GmsRecipientAdapter;

    iget-object v0, v0, Lcom/google/android/gms/chips/GmsRecipientAdapter$GmsFilterResult;->paramsList:Ljava/util/List;

    # invokes: Lcom/google/android/gms/chips/GmsRecipientAdapter;->startSearchOtherDirectories(Ljava/lang/CharSequence;Ljava/util/List;I)V
    invoke-static {v2, p1, v0, v1}, Lcom/google/android/gms/chips/GmsRecipientAdapter;->access$1300(Lcom/google/android/gms/chips/GmsRecipientAdapter;Ljava/lang/CharSequence;Ljava/util/List;I)V

    .line 213
    :cond_0
    :goto_1
    return-void

    .line 200
    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/chips/GmsRecipientAdapter$GmsFilterResult;->paramsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/chips/GmsRecipientAdapter$GmsFilter;->this$0:Lcom/google/android/gms/chips/GmsRecipientAdapter;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # invokes: Lcom/google/android/gms/chips/GmsRecipientAdapter;->updateEntries(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/google/android/gms/chips/GmsRecipientAdapter;->access$1400(Lcom/google/android/gms/chips/GmsRecipientAdapter;Ljava/util/List;)V

    goto :goto_1
.end method
