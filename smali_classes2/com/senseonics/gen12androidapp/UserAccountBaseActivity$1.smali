.class synthetic Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$1;
.super Ljava/lang/Object;
.source "UserAccountBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$senseonics$util$AccountConstants$CheckAndUpdatePasswordResult:[I

.field static final synthetic $SwitchMap$com$senseonics$util$AccountConstants$MLDMSResult:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 258
    invoke-static {}, Lcom/senseonics/util/AccountConstants$MLDMSResult;->values()[Lcom/senseonics/util/AccountConstants$MLDMSResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$1;->$SwitchMap$com$senseonics$util$AccountConstants$MLDMSResult:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/senseonics/util/AccountConstants$MLDMSResult;->DataSaved:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    invoke-virtual {v2}, Lcom/senseonics/util/AccountConstants$MLDMSResult;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$1;->$SwitchMap$com$senseonics$util$AccountConstants$MLDMSResult:[I

    sget-object v3, Lcom/senseonics/util/AccountConstants$MLDMSResult;->GeneralErrorSavingData:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    invoke-virtual {v3}, Lcom/senseonics/util/AccountConstants$MLDMSResult;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$1;->$SwitchMap$com$senseonics$util$AccountConstants$MLDMSResult:[I

    sget-object v4, Lcom/senseonics/util/AccountConstants$MLDMSResult;->InvalidUserCredentials:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    invoke-virtual {v4}, Lcom/senseonics/util/AccountConstants$MLDMSResult;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$1;->$SwitchMap$com$senseonics$util$AccountConstants$MLDMSResult:[I

    sget-object v5, Lcom/senseonics/util/AccountConstants$MLDMSResult;->InvalidDeviceType:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    invoke-virtual {v5}, Lcom/senseonics/util/AccountConstants$MLDMSResult;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$1;->$SwitchMap$com$senseonics$util$AccountConstants$MLDMSResult:[I

    sget-object v6, Lcom/senseonics/util/AccountConstants$MLDMSResult;->Timeout:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    invoke-virtual {v6}, Lcom/senseonics/util/AccountConstants$MLDMSResult;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v5, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$1;->$SwitchMap$com$senseonics$util$AccountConstants$MLDMSResult:[I

    sget-object v6, Lcom/senseonics/util/AccountConstants$MLDMSResult;->NotConnectedToWifi:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    invoke-virtual {v6}, Lcom/senseonics/util/AccountConstants$MLDMSResult;->ordinal()I

    move-result v6

    const/4 v7, 0x6

    aput v7, v5, v6
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v5, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$1;->$SwitchMap$com$senseonics$util$AccountConstants$MLDMSResult:[I

    sget-object v6, Lcom/senseonics/util/AccountConstants$MLDMSResult;->ServerError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    invoke-virtual {v6}, Lcom/senseonics/util/AccountConstants$MLDMSResult;->ordinal()I

    move-result v6

    const/4 v7, 0x7

    aput v7, v5, v6
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v5, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$1;->$SwitchMap$com$senseonics$util$AccountConstants$MLDMSResult:[I

    sget-object v6, Lcom/senseonics/util/AccountConstants$MLDMSResult;->IDNotFound:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    invoke-virtual {v6}, Lcom/senseonics/util/AccountConstants$MLDMSResult;->ordinal()I

    move-result v6

    const/16 v7, 0x8

    aput v7, v5, v6
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v5, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$1;->$SwitchMap$com$senseonics$util$AccountConstants$MLDMSResult:[I

    sget-object v6, Lcom/senseonics/util/AccountConstants$MLDMSResult;->None:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    invoke-virtual {v6}, Lcom/senseonics/util/AccountConstants$MLDMSResult;->ordinal()I

    move-result v6

    const/16 v7, 0x9

    aput v7, v5, v6
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v5, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$1;->$SwitchMap$com$senseonics$util$AccountConstants$MLDMSResult:[I

    sget-object v6, Lcom/senseonics/util/AccountConstants$MLDMSResult;->IamInvalidCredential:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    invoke-virtual {v6}, Lcom/senseonics/util/AccountConstants$MLDMSResult;->ordinal()I

    move-result v6

    const/16 v7, 0xa

    aput v7, v5, v6
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v5, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$1;->$SwitchMap$com$senseonics$util$AccountConstants$MLDMSResult:[I

    sget-object v6, Lcom/senseonics/util/AccountConstants$MLDMSResult;->IamLockedOut:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    invoke-virtual {v6}, Lcom/senseonics/util/AccountConstants$MLDMSResult;->ordinal()I

    move-result v6

    const/16 v7, 0xb

    aput v7, v5, v6
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v5, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$1;->$SwitchMap$com$senseonics$util$AccountConstants$MLDMSResult:[I

    sget-object v6, Lcom/senseonics/util/AccountConstants$MLDMSResult;->Unknown:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    invoke-virtual {v6}, Lcom/senseonics/util/AccountConstants$MLDMSResult;->ordinal()I

    move-result v6

    const/16 v7, 0xc

    aput v7, v5, v6
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    .line 205
    :catch_b
    invoke-static {}, Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;->values()[Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$1;->$SwitchMap$com$senseonics$util$AccountConstants$CheckAndUpdatePasswordResult:[I

    :try_start_c
    sget-object v6, Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;->InvalidCredentials:Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;

    invoke-virtual {v6}, Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v1, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$1;->$SwitchMap$com$senseonics$util$AccountConstants$CheckAndUpdatePasswordResult:[I

    sget-object v5, Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;->EmailNotExist:Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;

    invoke-virtual {v5}, Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;->ordinal()I

    move-result v5

    aput v0, v1, v5
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$1;->$SwitchMap$com$senseonics$util$AccountConstants$CheckAndUpdatePasswordResult:[I

    sget-object v1, Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;->PwdUpdatedAndAuthenticated:Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;

    invoke-virtual {v1}, Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$1;->$SwitchMap$com$senseonics$util$AccountConstants$CheckAndUpdatePasswordResult:[I

    sget-object v1, Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;->NoPwdUpdateNeededAndAuthenticated:Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;

    invoke-virtual {v1}, Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$1;->$SwitchMap$com$senseonics$util$AccountConstants$CheckAndUpdatePasswordResult:[I

    sget-object v1, Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;->ServerError:Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;

    invoke-virtual {v1}, Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    return-void
.end method
