.class synthetic Lcom/senseonics/util/DMSStateModelUploadTask$1;
.super Ljava/lang/Object;
.source "DMSStateModelUploadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/util/DMSStateModelUploadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$senseonics$util$StateModelUploadUtility_SOAP$StateModelType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 66
    invoke-static {}, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;->values()[Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/senseonics/util/DMSStateModelUploadTask$1;->$SwitchMap$com$senseonics$util$StateModelUploadUtility_SOAP$StateModelType:[I

    :try_start_0
    sget-object v1, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;->StateModelType_CheckAndUpdatePassword:Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

    invoke-virtual {v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/senseonics/util/DMSStateModelUploadTask$1;->$SwitchMap$com$senseonics$util$StateModelUploadUtility_SOAP$StateModelType:[I

    sget-object v1, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;->StateModelType_TxInfo:Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

    invoke-virtual {v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/senseonics/util/DMSStateModelUploadTask$1;->$SwitchMap$com$senseonics$util$StateModelUploadUtility_SOAP$StateModelType:[I

    sget-object v1, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;->StateModelType_SxInfo:Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

    invoke-virtual {v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/senseonics/util/DMSStateModelUploadTask$1;->$SwitchMap$com$senseonics$util$StateModelUploadUtility_SOAP$StateModelType:[I

    sget-object v1, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;->StateModelType_ThresholdInfo:Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

    invoke-virtual {v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/senseonics/util/DMSStateModelUploadTask$1;->$SwitchMap$com$senseonics$util$StateModelUploadUtility_SOAP$StateModelType:[I

    sget-object v1, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;->StateModelType_AppInfo:Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

    invoke-virtual {v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
